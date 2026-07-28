import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure FourierPackage where
  domainSize : Nat
  characters : List (List Bool → ℂ)
  expansionCoefficients : (List Bool → ℂ) → ℂ → ℂ
  parsevalIdentity : Prop
  convolutionTheorem : Prop

structure FourierEvidence (F : FourierPackage) where
  parsevalIdentityClosed : F.parsevalIdentity
  convolutionTheoremClosed : F.convolutionTheorem

def FourierClosed (F : FourierPackage) : Prop :=
  F.parsevalIdentity ∧ F.convolutionTheorem

theorem fourier_closed_from_evidence (F : FourierPackage) (E : FourierEvidence F) :
    FourierClosed F := by
  exact And.intro E.parsevalIdentityClosed E.convolutionTheoremClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse