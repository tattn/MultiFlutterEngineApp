//
//  FlutterView.swift
//  MultiFlutterEngineApp
//
//  Created by Tatsuya Tanaka on 2021/03/04.
//

import SwiftUI
import Flutter

struct FlutterView : UIViewControllerRepresentable {
    let entrypoint: String?

    func makeUIViewController(context: Context) -> _FlutterView {
        return _FlutterView(withEntrypoint: entrypoint)
    }

    func updateUIViewController(_ uiViewController: _FlutterView, context: Context) {
    }
}

class _FlutterView: FlutterViewController {
    init(withEntrypoint entrypoint: String?) {
        let newEngine = engines.makeEngine(withEntrypoint: entrypoint, libraryURI: nil)
        super.init(engine: newEngine, nibName: nil, bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
    }
}

struct FlutterView_Previews: PreviewProvider {
    static var previews: some View {
        FlutterView(entrypoint: nil)
    }
}
