1. PostgreSQL হলো একটি রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম। এটি একটি ওপেন সোর্স ফাইল।

3. Primary Key কোন একটি ডাটা টেবিলের একটি নিদির্ষ্ট row কে uniquely শনাক্ত করে ।
   Foreign Key অন্য একটি টেবিলের একটি নিদির্ষ্ট row কে uniquely শনাক্ত করে ।

4. CHAR ডাটা টাইপের মধ্যে যত length দেওয়া হবে ঠিক ততটুকু জয়গাই নিবে, ডাটা যদি এর থেকে ছোটও হয় তাহলে space দিয়ে বাকি জায়গা পূরণ করবে।
অন্যদিকে VARCHAR ডাটা টাইপের মধ্যে ডাটার length যতটুকু হবে ঠিক ততটুকুই জায়গা নিবে এবং সর্বোচ্চ এর মধ্যে যত length দেওয়া হবে ।

5. SELECT এর মধ্যে WHERE দিয়ে ডাটাকে ফিল্টার করা যায় । যেমন : 
    SELECT * FROM STUDENTS WHERE gender = 'male';

8. JOIN অপারেশন এর মাধ্যমে একটি টেবিলের সাথে আরেকটি টেবিলকে যুক্ত করা যায় Foreign Key এর মাধ্যমে। যেমন : 
    SELECT student_name, result_grade from results 
        JOIN students WITH(student_id);

