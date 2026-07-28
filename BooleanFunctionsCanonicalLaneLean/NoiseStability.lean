import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

structure NoiseStabilityPackage {n : ℕ} {f : (Fin n → Bool) → Bool} (F : FourierExpansionPackage n f) where
  noiseOperator : ℝ → ((Fin n → Bool) → ℝ) → ((Fin n → Bool) → ℝ)
  noiseStability : ℝ → ℝ
  noiseStabilityFormula : ∀ ρ, noiseStability ρ = ∑ S, (F.fourierCoefficients S) ^ 2 * ρ ^ (Finset.card S : ℝ)
  contractivity : Prop

structure NoiseStabilityEvidence {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (N : NoiseStabilityPackage F) where
  contractivityClosed : N.contractivity

def NoiseStabilityClosed {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (N : NoiseStabilityPackage F) : Prop :=
  N.contractivity

theorem noise_stability_closed_from_evidence {n : ℕ} {f : (Fin n → Bool) → Bool} {F : FourierExpansionPackage n f} (N : NoiseStabilityPackage F) (E : NoiseStabilityEvidence N) :
    NoiseStabilityClosed N := by
  exact E.contractivityClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse