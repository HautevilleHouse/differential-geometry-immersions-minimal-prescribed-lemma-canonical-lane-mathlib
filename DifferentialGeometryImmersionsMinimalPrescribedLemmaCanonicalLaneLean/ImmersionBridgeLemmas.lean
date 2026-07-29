import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean.ImmersionMinimalPrescribedLemma

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

def bridgeClosed (A : MinimalImmersionAdmissibleClass) : Prop :=
  A.object.bridgeClosed A.object.bridgeData.bridgeHypothesis

theorem bridge_from_admissible_class (A : MinimalImmersionAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bridgeClosed A.object.bridgeData.bridgeHypothesis

def gateClosed (A : MinimalImmersionAdmissibleClass) : Prop :=
  A.object.endpointSatisfied ∨ A.object.remainderRecorded

theorem gate_from_admissible_class (A : MinimalImmersionAdmissibleClass) :
    gateClosed A := by
  exact A.object.gateWitness

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse
