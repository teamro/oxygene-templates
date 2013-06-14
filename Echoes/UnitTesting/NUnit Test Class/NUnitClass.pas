// This UnitTest class uses the NUnit framework
// For more info visit the homepage: http://www.nunit.org/
namespace $rootnamespace$;

interface

uses
  System,
  System.Collection.Generic,
  NUnit.Framework;

type

  [TestFixture]
  $safeitemrootname$ = public class
  public
    [SetUp]
    method DoSetup;  
    [TearDown]
    method DoTearDown;  
    [Test]
    method DoTest;  
  end;

implementation

method $safeitemrootname$.DoSetup;
begin
  //Setup test objects here
end;

method $safeitemrootname$.DoTearDown;
begin
  //cleanup test objects here
end;

method $safeitemrootname$.DoTest;
begin
  //Do your tests here
end;

end.