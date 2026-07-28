import BooleanFunctionsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure BooleanFunctionTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  booleanFunctionConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : BooleanFunctionTheoremStatement :=
  { sourceKey := "boolean-functions-canonical-lane",
    theoremName := "boolean-functions-canonical-lane",
    theoremObject := "Boolean Functions: analysis, Fourier expansion, influence, noise stability",
    classicalBoundary := "classical Boolean function analysis boundary carried by formalization",
    booleanFunctionConstrainedStatement := "Boolean function theorem certificate internalized through admissible class closure",
    certificateLane := "boolean_function_constrained",
    carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
  }

theorem source_theorem_statement_defined :
    sourceTheoremStatement.sourceKey = "boolean-functions-canonical-lane" := by
  rfl

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse