//
//  Nutritious.swift
//  Nutritious
//
//  Created by Nitin Bhilkar on 6/30/23.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), stage: 1, configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), stage: 1, configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
       
        entries.append(SimpleEntry(date: Date(), stage: 1, configuration: configuration))
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let stage: Int
    let configuration: ConfigurationIntent
}

struct NutritiousEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        //Text(entry.date, style: .time)
       Image("Image0")
    }
}

struct Nutritious: Widget {
    let kind: String = "Nutritious"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            NutritiousEntryView(entry: entry)
        }
        .configurationDisplayName("Products!")
        .description("Wishlist Reminders")
    }
}

struct Nutritious_Previews: PreviewProvider {
    static var previews: some View {
        NutritiousEntryView(entry: SimpleEntry(date: Date(), stage: 1, configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
