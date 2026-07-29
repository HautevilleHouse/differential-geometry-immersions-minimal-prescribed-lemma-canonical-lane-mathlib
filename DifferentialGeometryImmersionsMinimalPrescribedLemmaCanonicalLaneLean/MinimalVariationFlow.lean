import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure MinimalVariationFlowPackage {M : Type u} [TopologicalSpace M]
    (G : ImmersionCurvaturePackage M) where
  timeParameter : Type v
  familyOfImmersions : timeParameter → G.immersedManifold → M
  meanCurvatureFlowEquation : Prop
  initialImmersion : Prop
  flowDifferentiable : Prop

structure MinimalVariationFlowEvidence {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} (F : MinimalVariationFlowPackage G) where
  meanCurvatureFlowEquationClosed : F.meanCurvatureFlowEquation
  initialImmersionClosed : F.initialImmersion
  flowDifferentiableClosed : F.flowDifferentiable

def MinimalVariationFlowClosed {M : Type u} [TopologicalSpace M]
    {G : ImmersionCurvaturePackage M} (F : MinimalVariationFlowPackage G) : Prop :=
  F.meanCurvatureFlowEquation ∧ F.initialImmersion ∧ F.flowDifferentiable

theorem minimal_variation_flow_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {G : ImmersionCurvaturePackage M}
    (F : MinimalVariationFlowPackage G) (E : MinimalVariationFlowEvidence F) :
    MinimalVariationFlowClosed F :=
  And.intro E.meanCurvatureFlowEquationClosed
    (And.intro E.initialImmersionClosed E.flowDifferentiableClosed)

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse