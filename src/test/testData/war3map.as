//funcdef void OnSomeFunc( );
//

#include "Scripts\\blizzard.as"

funcdef void CALLBACK();

class A {
  void callback (){
    print("test\n");
  }
}

class TestClass
{
  void someFunc( )
  {
    print( "TestClass::someFunc\n" );
  }
}

unit uTest;
trigger tTest;

array<unit> uArray(3);

namespace someNameSpaceDude
{
  void someFunc( )
  {
    print( "someFunc\n" );
  }
}

void main( )
{
  //testinclude( );
  someNameSpaceDude::someFunc( );

    SetCameraBounds(
      -3328.f + GetCameraMargin(CAMERA_MARGIN_LEFT), 
      -3584.f + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 
      3328.f - GetCameraMargin(CAMERA_MARGIN_RIGHT), 
      3072.f - GetCameraMargin(CAMERA_MARGIN_TOP), 
      -3328.f + GetCameraMargin(CAMERA_MARGIN_LEFT), 
      3072.f - GetCameraMargin(CAMERA_MARGIN_TOP), 
      3328.f - GetCameraMargin(CAMERA_MARGIN_RIGHT), 
      -3584.f + GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    );
    SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" );
    NewSoundEnvironment( "Default" );

  player p = Player( 0 );
  uTest = CreateUnit( p, FourCC( "Hpal" ), 500.0f, 100.0f, 90.0f );
  SetUnitModel( uTest, "units\\human\\Peasant\\Peasant.mdl" );

  print( GetUnitName( uTest ) + " (" + I2S( GetHandleId( uTest ) ) + ") axis: (" + R2S( GetUnitX( uTest ) ) + ", " + R2S( GetUnitY( uTest ) ) + ")" + "\n" );
  
  timer tmr = CreateTimer( );
  float ftm = .1f;
  
  TimerStart( tmr, ftm, true, 
    function( )
    {
      print( "tmr...\n" );
    }
  );

  if ( false )
  {
    A a = A();
    CALLBACK @func = CALLBACK(a.callback);

    TimerStart( CreateTimer( ), 1.f, true, func );
    return;

    //print( "Hello world\n" );

    //print( I2S( FourCC( "Hpal" ) ) + "\n" );
    //print( I2S( Player( 0 ) ) + "\n" );

    for ( int i = 0; i < bj_MAX_PLAYERS; i++ )
    {
      print( I2S( i ) + "\n" );
    }



    tTest = CreateTrigger( );
    TriggerRegisterPlayerEvent( tTest, p, EVENT_PLAYER_ARROW_LEFT_DOWN ); // ConvertPlayerEvent(261)

    TriggerAddAction( tTest,
      function( )
      {
        print( "OnSomeStupidAct\n" );
      }
    );

    //TriggerAddAction( tTest, @OnSomeStupidAct );
  }
}

void config( )
{
  //print( "Running config\n" );

    SetMapName( "UjAPI AS Test Map" );
    SetMapDescription( "Nondescript" );
    SetPlayers(4);
    SetTeams(2);
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER);

    DefineStartLocation(0, -64.f, 1920.f);
    DefineStartLocation(1, -2048.f, 1920.f);
    DefineStartLocation(2, -2624.f, 960.f);
    DefineStartLocation(3, 896.f, 1792.f);

    SetPlayerStartLocation(Player(0), 0);
    SetPlayerColor(Player(0), ConvertPlayerColor(0));
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN);
    SetPlayerRaceSelectable(Player(0), true);
    SetPlayerController(Player(0), MAP_CONTROL_USER);
    SetPlayerTeam( Player( 0 ), 0 );

    SetPlayerStartLocation(Player(2), 2);
    SetPlayerColor(Player(2), ConvertPlayerColor(2));
    SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD);
    SetPlayerRaceSelectable(Player(2), true);
    SetPlayerController(Player(2), MAP_CONTROL_USER);
    SetPlayerTeam( Player( 2 ), 0 );

    SetPlayerStartLocation(Player(1), 1);
    SetPlayerColor(Player(1), ConvertPlayerColor(1));
    SetPlayerRacePreference(Player(1), RACE_PREF_ORC);
    SetPlayerRaceSelectable(Player(1), true);
    SetPlayerController(Player(1), MAP_CONTROL_USER);
    SetPlayerTeam( Player( 1 ), 1 );

    SetPlayerStartLocation(Player(3), 3);
    SetPlayerColor(Player(3), ConvertPlayerColor(3));
    SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF);
    SetPlayerRaceSelectable(Player(3), true);
    SetPlayerController(Player(3), MAP_CONTROL_USER);
    SetPlayerTeam( Player( 3 ), 1 );
}

void OnSomeStupidAct( )
{
  print( "OnSomeStupidAct\n" );
}
