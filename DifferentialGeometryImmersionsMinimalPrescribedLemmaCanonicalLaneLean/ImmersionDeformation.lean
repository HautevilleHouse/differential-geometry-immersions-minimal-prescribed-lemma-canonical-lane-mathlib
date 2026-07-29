import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemma

structure ImmersionDeformationPackage where
  surface : Type u
  ambient : Type v
  initialImmersion : surface → ambient
  deformationField : Type w
  deformedImmersion : surface → ambient
  harmonicCondition : Prop
  stressEnergyTensor : Prop
  deformationEquation : Prop
  energyFunctionalCritical : Prop

structure ImmersionDeformationEvidence (D : ImmersionDeformationPackage) where
  harmonicConditionClosed : D.harmonicCondition
  stressEnergyTensorClosed : D.stressEnergyTensor
  deformationEquationClosed : D.deformationEquation
  energyFunctionalCriticalClosed : D.energyFunctionalCritical

def ImmersionDeformationClosed (D : ImmersionDeformationPackage) : Prop :=
  D.harmonicCondition ∧ D.stressEnergyTensor ∧
  D.deformationEquation ∧ D.energyFunctionalCritical

theorem immersion_deformation_closed_from_evidence
    (D : ImmersionDeformationPackage) (E : ImmersionDeformationEvidence D) :
    ImmersionDeformationClosed D := by
  exact And.intro E.harmonicConditionClosed
    (And.intro E.stressEnergyTensorClosed
      (And.intro E.deformationEquationClosed E.energyFunctionalCriticalClosed))

end DifferentialGeometryImmersionsMinimalPrescribedLemma
end HautevilleHouse
