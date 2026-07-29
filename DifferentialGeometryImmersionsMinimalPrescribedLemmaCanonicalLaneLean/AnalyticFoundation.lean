import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure AnalyticFoundation where
  curvature : ImmersionCurvaturePackage
  curvatureEvidence : ImmersionCurvatureEvidence curvature
  pde : PDEConstancyPackage
  pdeEvidence : PDEConstancyEvidence pde
  deformation : DeformationPackage
  deformationEvidence : DeformationEvidence deformation

def AnalyticFoundationClosed (A : AnalyticFoundation) : Prop :=
  ImmersionCurvatureClosed A.curvature ∧
  PDEConstancyClosed A.pde ∧
  DeformationClosed A.deformation

theorem analytic_foundation_closed_from_evidence (A : AnalyticFoundation) :
    AnalyticFoundationClosed A := by
  exact And.intro (immersion_curvature_closed_from_evidence A.curvature A.curvatureEvidence)
    (And.intro (pde_constancy_closed_from_evidence A.pde A.pdeEvidence)
      (deformation_closed_from_evidence A.deformation A.deformationEvidence))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse