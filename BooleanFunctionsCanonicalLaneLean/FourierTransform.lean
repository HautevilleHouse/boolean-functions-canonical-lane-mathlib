import BooleanFunctionsCanonicalLaneLean.BooleanFunctionAnalysis

/-! 
# Fourier Transform Package
-/

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure FourierTransformPackage {A : AdmissibleClass} (P : BooleanFunctionAnalysisPackage A) where
  basisFunctions : Type u
  fourierCoefficients : Type v
  parsevalIdentity : Prop
  convolutionTheorem : Prop

structure FourierTransformEvidence {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    (F : FourierTransformPackage P) where
  parsevalIdentityClosed : F.parsevalIdentity
  convolutionTheoremClosed : F.convolutionTheorem

def FourierTransformClosed {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    (F : FourierTransformPackage P) : Prop :=
  F.parsevalIdentity ∧ F.convolutionTheorem

theorem fourier_transform_closed_from_evidence
    {A : AdmissibleClass} {P : BooleanFunctionAnalysisPackage A}
    (F : FourierTransformPackage P) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.parsevalIdentityClosed E.convolutionTheoremClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse