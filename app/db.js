const Sequelize = require('sequelize');
const sequelize = new Sequelize('news', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
  
    pool: {
      max: 5,
      min: 0,
      acquire: 30000,
      idle: 10000
    },
    operatorsAliases: false
  });
  
  const News = sequelize.define('news', {
    id_news: {type: Sequelize.INTEGER(10).UNSIGNED, primaryKey: true, autoIncrement: true},
    title: Sequelize.STRING(255),
    content: Sequelize.TEXT,
    date: Sequelize.DATE,
    published: Sequelize.BOOLEAN,
    category: Sequelize.ENUM('hardware', 'software', 'networking', 'programming')
  }, {
    paranoid: true,
    underscored: true,
    timestamps: false,
    freezeTableName: true,
  });

  const db = {
      getAll: ()=>{
          return new Promise((res,rej)=>{
              News.findAll().then((rows)=>{
                  res(rows);
              });
          });
      },
      getOne: (id)=>{
          return new Promise((res,rej)=>{
              News.findById(id).then((row)=>{
                   res(row);
              });
          });
      },
      delete: (id)=>{
          return new Promise(async(res,rej)=>{
            var row = await db.getOne(id);
            row.destroy().then(()=>{
                res("Succesfully deleted");
            });
            
          }); 
      },
      insert: (data)=>{
          return new Promise(async(res,rej)=>{
            console.log("Inserting");
            News.create({title: data.title, content: data.content, date: data.date, published: data.date, category: data.category}).then((row)=>{
            row.save().then(()=>{
                res("Succesfully inserted");
            })

        });
          })
        
      },
      update: (id, data)=>{
          return new Promise(async(res,rej)=>{
            var row = await db.getOne(id);
            console.log("Updating");
            row.update({title: data.title, content: data.content, date: data.date, published: data.date, category: data.category}).then((row)=>{
                row.save();
                res("Successfully updated");
            });
          });
      },
      getEnum: ()=>{
          return new Promise((res,rej)=>{
              console.log(News.rawAttributes.category.values);
              res(News.rawAttributes.category.values);
          });
      }

  }

  module.exports = db;