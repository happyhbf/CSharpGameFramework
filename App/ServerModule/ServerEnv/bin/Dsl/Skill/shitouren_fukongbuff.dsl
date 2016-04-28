skill(108)
{
  section(60000)
  {
    animation("Damage");
    selfeffect(selfEffect,1000,"eyes",0)
    {
      transform(vector3(0,1,0));
    };
    enablemoveagent(false);
    addstate("sleep");
    adjustsectionduration("impact",100);
    jump(1500,10,0,1,vector3(0,0,0),0);
    damage(0);
  };
  section(100)
  {
    removestate("sleep");
    animation("Stand");
    enablemoveagent(true);
  };
  onstop
  {
    removestate("sleep");
    animation("Stand");
    enablemoveagent(true);
  };
};