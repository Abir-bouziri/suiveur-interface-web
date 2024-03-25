const db=require('./database.js');
db.getConnection((err, connection) => {
    if (err) {
        console.error('Error connecting to MySQL database: ', err);
    } else {
        console.log('Connected to MySQL database!');
        connection.release();
    }
})
const ajout=(req, res) => {
      res.status(200).json({ message: 'Post request received successfully.', data:req.body });
      querry="INSERT INTO `test`.`robots` (`robotname`, `robotuser`,`etablisement`,`homologation`) VALUES (?,?,?,?)",
db.query(querry ,[req.body.robname,req.body.robuser,req.body.robuniversity,req.body.homologation], (err, results) => {  
    if (err) { 
    console.log(err);
 } else {      
  console.log("ok ");        
 }  }
 );
  }

querry1='UPDATE `test`.`makerlabs` SET `Score` = ? , `ch1` = ?, `ch2` = ?, `ch3` = ?, `ch4` = ?, `ch5` = ?, `ch6` = ?, `ch7` = ?, `ch8` = ?, `ch9` = ? WHERE (`id` = ? );';
//querry1='UPDATE `test`.`makerlabs` SET `Score` = ? , `ch1` = ? WHERE (`id` = ? );';  
const update=(req, res) => {
    const email = req.body;
    /*console.log('Email submitted:', email);
    res.send('Email submitted successfully.'+email);*/
    res.status(200).json({ message: 'Post request received successfully.', data: email });
    db.query(querry1 ,[req.body.score,req.body.exampleRadios,req.body.exampleRadios2,req.body.exampleRadios3,req.body.exampleRadios4,req.body.exampleRadios5,req.body.exampleRadios6,req.body.exampleRadios7,req.body.exampleRadios8,req.body.exampleRadios9,req.body.id], (err, results) => {  
        if (err) { 
        console.log(err);
     } else {      
      console.log("ok ");        
     }  }
     );
}
module.exports={ajout,update}