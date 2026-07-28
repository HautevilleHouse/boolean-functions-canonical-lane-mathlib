import BooleanFunctionsCanonicalLaneLean.BooleanFunctionsObjects

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BooleanFunctionClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse