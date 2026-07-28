import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure KKLTheoremPackage {n : ℕ} {f : (Fin n → Bool) → Bool} (I : InfluencePackage (FourierExpansionPackage n f)) where
  maximalInfluenceBound : Prop
  majorityIsStablest : Prop
  kklConclusion : Prop

structure KKLTheoremEvidence {n : ℕ} {f : (Fin n → Bool) → Bool} {I : InfluencePackage (FourierExpansionPackage n f)} (K : KKLTheoremPackage I) where
  kklConclusionClosed : K.kklConclusion

def KKLTheoremClosed {n : ℕ} {f : (Fin n → Bool) → Bool} {I : InfluencePackage (FourierExpansionPackage n f)} (K : KKLTheoremPackage I) : Prop :=
  K.kklConclusion

theorem kkl_theorem_closed_from_evidence {n : ℕ} {f : (Fin n → Bool) → Bool} {I : InfluencePackage (FourierExpansionPackage n f)} (K : KKLTheoremPackage I) (E : KKLTheoremEvidence K) :
    KKLTheoremClosed K := by
  exact E.kklConclusionClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse