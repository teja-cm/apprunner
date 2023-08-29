const express=require('express');
const app=express()
app.use(express.json())


app.get('/hello',(req,res)=>{
    try {
        return res.status(200).send("Hello AppRunner");
    } catch (error) {
        return res.status(500);
    }
})
module.exports=app;