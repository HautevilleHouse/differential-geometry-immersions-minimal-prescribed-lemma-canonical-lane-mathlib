import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure PDEConstancyPackage where
  quasilinearSystem : Prop
  ellipticityCondition : Prop
  fredholmAlternative : Prop
  morseIndexComputed : Prop

structure PDEConstancyEvidence (P : PDEConstancyPackage) where
  quasilinearSystemClosed : P.quasilinearSystem
  ellipticityConditionClosed : P.ellipticityCondition
  fredholmAlternativeClosed : P.fredholmAlternative
  morseIndexComputedClosed : P.morseIndexComputed

def PDEConstancyClosed (P : PDEConstancyPackage) : Prop :=
  P.quasilinearSystem ∧ P.ellipticityCondition ∧
  P.fredholmAlternative ∧ P.morseIndexComputed

theorem pde_constancy_closed_from_evidence (P : PDEConstancyPackage)
    (E : PDEConstancyEvidence P) : PDEConstancyClosed P := by
  exact And.intro E.quasilinearSystemClosed
    (And.intro E.ellipticityConditionClosed
      (And.intro E.fredholmAlternativeClosed E.morseIndexComputedClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse