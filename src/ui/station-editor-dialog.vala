/* This file is part of Gradio.
 *
 * Gradio is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Gradio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Gradio.  If not, see <http://www.gnu.org/licenses/>.
 */

using Gtk;
namespace Gradio{

	[GtkTemplate (ui = "/de/haecker-felix/gradio/ui/station-editor-dialog.ui")]
	public class StationEditorDialog : Gtk.Dialog {

		[GtkChild]
		private Entry NameEntry;

		private RadioStation station;

		public StationEditorDialog (RadioStation s) {
			station = s;

			load_data();
		}

		[GtkCallback]
        	private void ApplyButton_clicked (Button button) {

			station.Title = NameEntry.get_text();

			this.destroy();
		}

		private void load_data(){
			NameEntry.set_text(station.Title);


		}

	}
}
