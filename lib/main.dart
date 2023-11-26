import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kemahasiswaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar Jadwal Akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => JadwalAkademisScreen()),
                );
              },
              child: Text('Jadwal Akademis'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar Info Akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoAkademisScreen()),
                );
              },
              child: Text('Info Akademis'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar E-learning
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ELearningScreen()),
                );
              },
              child: Text('E-learning'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar pengelolaan tugas
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pengelolaantugas()),
                );
              },
              child: Text('Pengelolaan Tugas'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar pelayanan akademis
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pelayananakademis()),
                );
              },
              child: Text('Pelayanan Akademis'),
            ),
          ],
        ),
      ),
    );
  }
}

// Layar untuk Jadwal Akademis
class JadwalAkademisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Akademis'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Jadwal Kuliah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Widget untuk menampilkan jadwal kuliah
            AcademicScheduleItem(
                day: 'Senin', time: '08:00 - 10:00', subject: 'Matematika'),
            AcademicScheduleItem(
                day: 'Selasa',
                time: '10:00 - 12:00',
                subject: 'Bahasa Inggris'),
            AcademicScheduleItem(
                day: 'Rabu',
                time: '09:00 - 11:00',
                subject: 'Bahasa Indonesia'),
            AcademicScheduleItem(
                day: 'kamis',
                time: '08:00 - 10:00',
                subject: 'Jaringan Komputer'),
            AcademicScheduleItem(
                day: 'Jumat',
                time: '09:00 - 11:00',
                subject: 'Keamanan Jaringan'),
            // Tambahkan item jadwal lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicScheduleItem extends StatelessWidget {
  final String day;
  final String time;
  final String subject;

  AcademicScheduleItem(
      {required this.day, required this.time, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          '$day - $time',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subject),
      ),
    );
  }
}

// Layar untuk Info Akademis
class InfoAkademisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Akademis'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pengumuman Penting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Widget untuk menampilkan pengumuman
            AcademicInfoItem(
              title: 'Pendaftaran Ulang Semester Ganjil',
              content:
                  'Pendaftaran ulang dimulai pada tanggal 1 September 2023.',
            ),
            AcademicInfoItem(
              title: 'Jadwal Ujian Akhir',
              content:
                  'Jadwal ujian akhir semester ganjil dapat dilihat di portal akademik.',
            ),
            // Tambahkan item info akademis lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicInfoItem extends StatelessWidget {
  final String title;
  final String content;

  AcademicInfoItem({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}

// Layar untuk E-learning
class eLearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kemahasiswaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ELearningScreen(),
    );
  }
}

class ELearningScreen extends StatefulWidget {
  @override
  _ELearningScreenState createState() => _ELearningScreenState();
}

class _ELearningScreenState extends State<ELearningScreen> {
  List<ELearningItem> allELearningItems = [
    ELearningItem(
        title: 'Matematika Dasar',
        description: 'Pertemuan 1: Pengenalan Bilangan Bulat.'),
    ELearningItem(
        title: 'Bahasa Inggris',
        description: 'Unit 3: Vocabulary and Grammar.'),
    // Tambahkan item e-learning lainnya sesuai kebutuhan
  ];

  List<ELearningItem> displayedELearningItems = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    displayedELearningItems.addAll(allELearningItems);
    super.initState();
  }

  void filterELearningItems(String query) {
    query = query.toLowerCase();
    setState(() {
      displayedELearningItems = allELearningItems
          .where((item) =>
              item.title.toLowerCase().contains(query) ||
              item.description.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-learning Akademik'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: searchController,
              onChanged: filterELearningItems,
              decoration: InputDecoration(
                labelText: 'Cari Materi Perkuliahan',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: displayedELearningItems.length,
                itemBuilder: (context, index) {
                  return ELearningItemCard(
                      item: displayedELearningItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ELearningItem {
  final String title;
  final String description;

  ELearningItem({required this.title, required this.description});
}

class ELearningItemCard extends StatelessWidget {
  final ELearningItem item;

  ELearningItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(item.description),
          ],
        ),
      ),
    );
  }
}

// Layar untuk pengelolaan tugas
class Pengelolaantugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengelolaan Tugas dan Pengingat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskManagerScreen(),
    );
  }
}

class TaskManagerScreen extends StatefulWidget {
  @override
  _TaskManagerScreenState createState() => _TaskManagerScreenState();
}

class _TaskManagerScreenState extends State<TaskManagerScreen> {
  List<TaskItem> taskItems = [];

  TextEditingController taskController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengelolaan Tugas dan Pengingat'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                labelText: 'Tambah Tugas',
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Pilih Tanggal'),
                ),
                SizedBox(width: 16),
                Text(
                  'Tanggal Pengingat: ${selectedDate.toLocal()}'.split(' ')[0],
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _addTask(),
              child: Text('Tambah Tugas'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: taskItems.length,
                itemBuilder: (context, index) {
                  return TaskItemCard(
                    item: taskItems[index],
                    onDelete: () => _deleteTask(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        taskItems.add(TaskItem(
          task: taskController.text,
          reminderDate: selectedDate,
        ));
        taskController.clear();
      });
    }
  }

  void _deleteTask(int index) {
    setState(() {
      taskItems.removeAt(index);
    });
  }
}

class TaskItem {
  final String task;
  final DateTime reminderDate;

  TaskItem({required this.task, required this.reminderDate});
}

class TaskItemCard extends StatelessWidget {
  final TaskItem item;
  final VoidCallback onDelete;

  TaskItemCard({required this.item, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.task,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text('Tanggal Pengingat: ${item.reminderDate.toLocal()}'
                .split(' ')[0]),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: onDelete,
              child: Text('Hapus Tugas'),
            ),
          ],
        ),
      ),
    );
  }
}

// Layar untuk pelayanan akademis
class pelayananakademis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelayanan Akademis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AcademicServicesScreen(),
    );
  }
}

class AcademicServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelayanan Akademis'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Layanan Akademis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            AcademicServiceItem(
              title: 'Pendaftaran Kuliah',
              description: 'Proses pendaftaran untuk semester berikutnya.',
            ),
            AcademicServiceItem(
              title: 'Pembayaran Biaya Kuliah',
              description: 'Info dan proses pembayaran biaya kuliah.',
            ),
            AcademicServiceItem(
              title: 'Pengajuan Cuti Akademis',
              description: 'Prosedur pengajuan cuti akademis.',
            ),
            // Tambahkan item layanan akademis lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

class AcademicServiceItem extends StatelessWidget {
  final String title;
  final String description;

  AcademicServiceItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
