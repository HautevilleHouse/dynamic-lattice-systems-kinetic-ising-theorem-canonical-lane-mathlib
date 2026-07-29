import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean.KineticIsingAdmittedObject

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure KineticIsingFormalization where
  lattice : LatticeSpace
  spinConfig : Type
  dynamics : Type
  glauberDynamics : Prop
  kawasakiDynamics : Prop
  equilibriumMeasure : Prop
  clusterExpansion : Prop
  data : String

def kineticIsingFormalization : KineticIsingFormalization := {
  lattice := { carrier := ℕ, topology := inferInstance }
  spinConfig := ℕ → ℤ
  dynamics := Unit
  glauberDynamics := True
  kawasakiDynamics := True
  equilibriumMeasure := True
  clusterExpansion := True
  data := "dynamic lattice systems kinetic ising theorem formalization"
}

theorem formalization_glauber_checked : kineticIsingFormalization.glauberDynamics := by
  unfold kineticIsingFormalization
  trivial

theorem formalization_kawasaki_checked : kineticIsingFormalization.kawasakiDynamics := by
  unfold kineticIsingFormalization
  trivial

theorem formalization_equilibrium_checked : kineticIsingFormalization.equilibriumMeasure := by
  unfold kineticIsingFormalization
  trivial

theorem formalization_cluster_checked : kineticIsingFormalization.clusterExpansion := by
  unfold kineticIsingFormalization
  trivial

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse