import Foundation

class FileDownloader {
    static let shared = FileDownloader()

    func downloadFile(from url: URL, completion: @escaping (Result<URL, Error>) -> Void) {
        let task = URLSession.shared.downloadTask(with: url) { localURL, response, error in
            if let localURL = localURL {
                completion(.success(localURL))
            } else if let error = error {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
