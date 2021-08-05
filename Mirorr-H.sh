#pragma once
namespace Invisible_Network {

	class Mirror {
	public:
		Mirror(const CStdString& url="", int priority=0): url(url), priority(priority) {
		}
		CStdString url;
		int priority;
	};


	class MirrorList {
	public:
		void addMirror(const CStdString& id, const Mirror& mirror) {
			_list[id] = mirror;
		}
		void getMirrors(const CStdString& url, Stamina::tStringVector& list, const CStdString& allow, const CStdString& fallback);
	private:
		typedef std::map<CStdString, Mirror> tList;
		tList _list;
	};

};
