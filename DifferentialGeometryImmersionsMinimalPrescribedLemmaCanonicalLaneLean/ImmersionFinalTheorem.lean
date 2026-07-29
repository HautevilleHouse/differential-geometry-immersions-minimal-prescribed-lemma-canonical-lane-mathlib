import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.ImmersionBridgeLemmas

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

def ConstrainedImmersionClosure (A : MinimalImmersionAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_immersion_endgame (A : MinimalImmersionAdmissibleClass) :
    ConstrainedImmersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse
