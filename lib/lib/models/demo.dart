class Demo
{
  int _id;
  String _name;
  int _age; //class declaration

  Demo(this._name,this._age);
  Demo.withId(this._name,this._age); //constructor

  int get id => _id;
  String get name => _name;
  int get age => _age; // getters

  set name ( String newTitle){
    if (newTitle.length<=255)
    {
      this._name = newTitle;
    }
  }
  set age ( int newPriority)
  {
    if (newPriority>=1 && newPriority<=2)
    {
      this._age=newPriority;
    }
  }
  Map<String,dynamic> toMap(){
    var map= Map<String,dynamic>();
    if(id !=null){
      map['id']=_id;
    }
    map['name']=_name;
    map['age']=_age;
    return map;
  }
  Demo.fromMapObject(Map<String,dynamic>map){
    this._id=map['id'];
    this._name=map['name'];
    this._age=map['age'];
  }
}