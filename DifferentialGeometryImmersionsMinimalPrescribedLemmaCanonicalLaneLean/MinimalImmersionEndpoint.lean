import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemma

structure MinimalImmersionEndpointPackage where
  surface : Type u
  targetManifold : Type v
  targetTopology : TopologicalSpace targetManifold
  immersion : surface → targetManifold
  minimalCondition : Prop
  prescribedCurvatureAchieved : Prop
  endpointReached : Prop

structure MinimalImmersionEndpointEvidence (E : MinimalImmersionEndpointPackage) where
  minimalConditionClosed : E.minimalCondition
  prescribedCurvatureAchievedClosed : E.prescribedCurvatureAchieved
  endpointReachedClosed : E.endpointReached

def MinimalImmersionEndpointClosed (E : MinimalImmersionEndpointPackage) : Prop :=
  E.minimalCondition ∧ E.prescribedCurvatureAchieved ∧ E.endpointReached

theorem minimal_immersion_endpoint_closed_from_evidence
    (E : MinimalImmersionEndpointPackage) (Ev : MinimalImmersionEndpointEvidence E) :
    MinimalImmersionEndpointClosed E := by
  exact And.intro Ev.minimalConditionClosed
    (And.intro Ev.prescribedCurvatureAchievedClosed Ev.endpointReachedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemma
end HautevilleHouse
