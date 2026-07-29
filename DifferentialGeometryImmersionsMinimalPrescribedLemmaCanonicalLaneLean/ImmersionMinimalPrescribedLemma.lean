import canonicalLaneMathlib.AdmissibleClass

/-!
# Immersion Minimal Prescribed Lemma

This module defines structures and bridge statements for the prescribed minimal
immersion problem in differential geometry, following the admissible-class closure pattern.
-/

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure RiemannianImmersionPackage where
  ambientManifold : Type u
  ambientMetric : Type v
  submanifold : Type w
  immersionMap : submanifold → ambientManifold
  inducedMetric : Prop
  secondFundamentalForm : Prop
  meanCurvatureVector : Prop
  isMinimal : meanCurvatureVector = 0

structure ImmersionCurvaturePackage where
  ambientCurvature : Prop
  gaussCodazziEquations : Prop
  ricciEquation : Prop
  curvatureEllipticEstimates : Prop

structure PrescribedCurvatureData where
  targetRicciCurvature : Type u
  targetScalarCurvature : Type v
  prescribedRicciSatisfiesConstraints : Prop
  prescribedScalarSatisfiesConstraints : Prop

structure MinimalImmersionExistencePackage where
  existenceResult : Prop
  regularityResult : Prop
  uniquenessResult : Prop
  continuityMethodUsed : Prop

structure MinimalImmersionBridgeData where
  immersionObj : RiemannianImmersionPackage
  curvatureObj : ImmersionCurvaturePackage
  prescribedObj : PrescribedCurvatureData
  existenceObj : MinimalImmersionExistencePackage
  bridgeHypothesis : Prop
  bridgeConclusion : Prop

structure MinimalImmersionAdmissibleObject where
  bridgeData : MinimalImmersionBridgeData
  bridgeClosed : bridgeData.bridgeHypothesis → bridgeData.bridgeConclusion
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure MinimalImmersionAdmissibleClass where
  object : MinimalImmersionAdmissibleObject

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse
