import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure ImmersionCurvaturePackage (M : Type u) [TopologicalSpace M] where
  immersedManifold : Type v
  immersionMap : immersedManifold → M
  secondFundamentalForm : Type w
  meanCurvatureVector : Type x
  curvatureInvariants : Prop
  immersionSmooth : Prop
  secondFundamentalFormDefined : Prop
  meanCurvatureVectorDefined : Prop

structure ImmersionCurvatureEvidence {M : Type u} [TopologicalSpace M]
    (G : ImmersionCurvaturePackage M) where
  curvatureInvariantsClosed : G.curvatureInvariants
  immersionSmoothClosed : G.immersionSmooth
  secondFundamentalFormDefinedClosed : G.secondFundamentalFormDefined
  meanCurvatureVectorDefinedClosed : G.meanCurvatureVectorDefined

def ImmersionCurvatureClosed {M : Type u} [TopologicalSpace M]
    (G : ImmersionCurvaturePackage M) : Prop :=
  G.curvatureInvariants ∧ G.immersionSmooth ∧
  G.secondFundamentalFormDefined ∧ G.meanCurvatureVectorDefined

theorem immersion_curvature_closed_from_evidence
    {M : Type u} [TopologicalSpace M] (G : ImmersionCurvaturePackage M)
    (E : ImmersionCurvatureEvidence G) : ImmersionCurvatureClosed G :=
  And.intro E.curvatureInvariantsClosed
    (And.intro E.immersionSmoothClosed
      (And.intro E.secondFundamentalFormDefinedClosed
        E.meanCurvatureVectorDefinedClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse