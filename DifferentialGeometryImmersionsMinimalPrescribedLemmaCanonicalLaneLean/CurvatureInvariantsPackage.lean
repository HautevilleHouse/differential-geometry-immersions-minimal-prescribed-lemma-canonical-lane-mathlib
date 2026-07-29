import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  secondFundamentalForm : Type u
  shapeOperator : Type v
  gaussCurvature : Prop
  meanCurvature : Prop
  sectionalCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  intrinsicCurvatureComputed : Prop
  extrinsicCurvatureComputed : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  gaussCurvatureClosed : C.gaussCurvature
  meanCurvatureClosed : C.meanCurvature
  sectionalCurvatureClosed : C.sectionalCurvature
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  intrinsicCurvatureComputedClosed : C.intrinsicCurvatureComputed
  extrinsicCurvatureComputedClosed : C.extrinsicCurvatureComputed

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.gaussCurvature ∧ C.meanCurvature ∧ C.sectionalCurvature ∧
  C.ricciCurvature ∧ C.scalarCurvature ∧ C.intrinsicCurvatureComputed ∧
  C.extrinsicCurvatureComputed

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage)
    (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C := by
  exact And.intro E.gaussCurvatureClosed
    (And.intro E.meanCurvatureClosed
      (And.intro E.sectionalCurvatureClosed
        (And.intro E.ricciCurvatureClosed
          (And.intro E.scalarCurvatureClosed
            (And.intro E.intrinsicCurvatureComputedClosed
              E.extrinsicCurvatureComputedClosed)))))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse