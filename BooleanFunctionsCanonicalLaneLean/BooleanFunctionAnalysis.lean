import BooleanFunctionsCanonicalLaneLean.AdmissibleClass

/-! 
# Boolean Function Analysis Package
-/

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure BooleanFunctionAnalysisPackage (A : AdmissibleClass) where
  fourierExpansion : Prop
  influenceComputation : Prop
  noiseOperator : Prop
  hypercontractivity : Prop

structure BooleanFunctionAnalysisEvidence {A : AdmissibleClass} (P : BooleanFunctionAnalysisPackage A) where
  fourierExpansionClosed : P.fourierExpansion
  influenceComputationClosed : P.influenceComputation
  noiseOperatorClosed : P.noiseOperator
  hypercontractivityClosed : P.hypercontractivity

def BooleanFunctionAnalysisClosed {A : AdmissibleClass} (P : BooleanFunctionAnalysisPackage A) : Prop :=
  P.fourierExpansion ∧ P.influenceComputation ∧ P.noiseOperator ∧ P.hypercontractivity

theorem boolean_function_analysis_closed_from_evidence
    {A : AdmissibleClass} (P : BooleanFunctionAnalysisPackage A) (E : BooleanFunctionAnalysisEvidence P) :
    BooleanFunctionAnalysisClosed P := by
  exact And.intro E.fourierExpansionClosed
    (And.intro E.influenceComputationClosed
      (And.intro E.noiseOperatorClosed E.hypercontractivityClosed))

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse