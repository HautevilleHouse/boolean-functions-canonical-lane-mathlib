import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure FourierExpansionPackage where
  booleanFunctionSet : Type u
  fourierBasis : Type v
  expansionCoefficients : booleanFunctionSet → (fourierBasis → ℝ)
  orthonormality : Prop
  parsevalIdentity : Prop
  convolutionTheorem : Prop

structure FourierExpansionEvidence (F : FourierExpansionPackage) where
  orthonormalityClosed : F.orthonormality
  parsevalIdentityClosed : F.parsevalIdentity
  convolutionTheoremClosed : F.convolutionTheorem

def FourierExpansionClosed (F : FourierExpansionPackage) : Prop :=
  F.orthonormality ∧ F.parsevalIdentity ∧ F.convolutionTheorem

theorem fourier_expansion_closed_from_evidence (F : FourierExpansionPackage)
    (E : FourierExpansionEvidence F) : FourierExpansionClosed F := by
  exact And.intro E.orthonormalityClosed
    (And.intro E.parsevalIdentityClosed E.convolutionTheoremClosed)

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse