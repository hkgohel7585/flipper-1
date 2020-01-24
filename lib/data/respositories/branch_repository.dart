import 'package:flipper/data/main_database.dart';
import 'package:flipper/domain/redux/app_state.dart';
import 'package:flipper/model/branch.dart';
import 'package:redux/redux.dart';

class BranchRepository {
  Future<int> insert(Store<AppState> store, Branch b) {
    var branch = new BranchTableData(name: b.name);
    return store.state.database.branchDao.insert(branch);
  }

  Future<void> update(String token) async {}

  Future<List<BranchTableData>> getBranches(Store<AppState> store) {
    return store.state.database.branchDao.getBranches();
  }
}