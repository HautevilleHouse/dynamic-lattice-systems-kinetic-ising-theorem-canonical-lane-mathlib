import DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.DynamicLatticeAdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure SpinFlipDynamicsPackage where
  spinConfigurations : Type u
  latticeSites : Type v
  transitionRates : spinConfigurations → spinConfigurations → ℝ
  singleSpinFlipCondition : Prop
  ergodicityCondition : Prop

structure SpinFlipDynamicsEvidence (S : SpinFlipDynamicsPackage) where
  singleSpinFlipConditionClosed : S.singleSpinFlipCondition
  ergodicityConditionClosed : S.ergodicityCondition

def SpinFlipDynamicsClosed (S : SpinFlipDynamicsPackage) : Prop :=
  S.singleSpinFlipCondition ∧ S.ergodicityCondition

theorem spin_flip_dynamics_closed_from_evidence
    (S : SpinFlipDynamicsPackage) (E : SpinFlipDynamicsEvidence S) :
    SpinFlipDynamicsClosed S := by
  exact And.intro E.singleSpinFlipConditionClosed E.ergodicityConditionClosed

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse