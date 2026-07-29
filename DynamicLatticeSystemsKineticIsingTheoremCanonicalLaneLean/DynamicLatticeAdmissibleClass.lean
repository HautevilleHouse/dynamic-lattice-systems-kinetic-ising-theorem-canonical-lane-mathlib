import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingSpace where
  carrier : Type
  latticeTopology : TopologicalSpace carrier

structure KineticIsingAdmittedObject where
  space : KineticIsingSpace
  latticeDimension : Nat
  spinConfigurationSpace : Type
  transitionRateFunction : spinConfigurationSpace → spinConfigurationSpace → ℝ
  detailedBalanceCondition : Prop
  conclusion : detailedBalanceCondition

def KineticIsingWitnessClosed (O : KineticIsingAdmittedObject) : Prop :=
  O.detailedBalanceCondition

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse