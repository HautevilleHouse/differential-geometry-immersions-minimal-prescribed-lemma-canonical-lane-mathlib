import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.Riemannian.Basic

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean

structure ImmersedSubmanifold where
  source : Type
  target : Type
  immersion : source → target
  sourceSmooth : Prop
  targetSmooth : Prop
  immersionSmooth : Prop
  rankConstant : Prop
  minimal : Prop

structure DiffeomorphismAdmittedObject where
  obj : ImmersedSubmanifold
  prescribedCurvatureTarget : Prop
  controlNormBounds : Prop
  conclusion : prescribedCurvatureTarget ∧ controlNormBounds

def ImmersionPrescribedClosed (O : DiffeomorphismAdmittedObject) : Prop :=
  O.prescribedCurvatureTarget ∧ O.controlNormBounds

end DifferentialGeometryImmersionsMinimalPrescribedLemmaCanonicalLaneLean
end HautevilleHouse