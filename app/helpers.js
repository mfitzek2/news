var Hb  = require('handlebars');

module.exports = {
    upperCase: function(str){
        return str.toUpperCase();
    },
    getYear: function(date){
        var d = new Date(date);
        return d.getFullYear();
    },
    convertDate: function(date){
        var d = new Date(date);
        return `${d.getDate()}. ${d.getMonth()}. ${d.getFullYear()}`;
    },
    convertDateCalendar: function(date){
        var d = new Date(date);
        return d.toISOString().split('T')[0];
    },
    safeString: function(str){
        return new Hb.SafeString(str);
    }
}