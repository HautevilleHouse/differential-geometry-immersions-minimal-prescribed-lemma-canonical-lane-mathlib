import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure DeformationPackage where
  implicitFunctionTheorem : Prop
  continuityMethod : Prop
  deformationFamily : Prop
  deformationLimit : Prop

structure DeformationEvidence (D : DeformationPackage) where
  implicitFunctionTheoremClosed : D.implicitFunctionTheorem
  continuityMethodClosed : D.continuityMethod
  deformationFamilyClosed : D.deformationFamily
  deformationLimitClosed : D.deformationLimit

def DeformationClosed (D : DeformationPackage) : Prop :=
  D.implicitFunctionTheorem ∧ D.continuityMethod ∧
  D.deformationFamily ∧ D.deformationLimit

theorem deformation_closed_from_evidence (D : DeformationPackage)
    (E : DeformationEvidence D) : DeformationClosed D := by
  exact And.intro E.implicitFunctionTheoremClosed
    (And.intro E.continuityMethodClosed
      (And.intro E.deformationFamilyClosed E.deformationLimitClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse