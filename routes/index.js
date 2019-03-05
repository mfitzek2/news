var express = require('express');
var router = express.Router();
const db = require('../app/db');

/* GET home page. */
router.get('/', async function(req, res, next) {
  res.render('index', { title: 'Express', data: await db.getAll() });
});

router.get('/detail/:id', async function(req, res, next) {
  let data = await db.getOne(req.params.id);
  res.render('detail', { title: 'Express', data: data.dataValues});
});

router.get('/edit/:id', async (req,res,next)=>{
  let category = await db.getEnum();
  let data = await db.getOne(req.params.id);
  res.render('edit', { title: 'Express', data: data.dataValues, category: category});
});

router.post('/edit/:id', async (req,res,next)=>{
  await db.update(req.params.id, req.body);
  res.redirect('/');
});

router.get('/insert', async (req,res,next)=>{
  let category = await db.getEnum();
  res.render('insert', { title: 'Express', category: category});
});

router.post('/insert', async (req,res,next)=>{
  db.insert(req.body).then(()=>{
    res.redirect('/');
  })

});

router.get('/delete/:id', async (req,res,next)=>{
  db.delete(req.params.id).then(()=>{
    res.redirect('/');
  })

});

module.exports = router;
