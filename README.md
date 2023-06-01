<!-- Improved compatibility of back to top link: See: https://github.com/wkusmirek/mONiTor/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the mONiTor. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">mONiTor</h3>

  <p align="center">
    Real-time monitoring of Oxford Nanopore Technology sequencing run
    <br />
    <a href="https://eve.ii.pw.edu.pl:9007/dashboards">View Demo</a>
    ·
    <a href="https://github.com/wkusmirek/mONiTor/issues">Report Bug</a>
    ·
    <a href="https://github.com/wkusmirek/mONiTor/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

Nanopore sequencing is the fourth-generation DNA sequencing technology and the significant advantages of nanopores include ultralong reads, low material requirement, and high throughput. Along with the development of the nanopore technology itself, open-source tools supporting work with the sequencers should also be developed.

Herein, we presented mONiTor - the new system for monitoring the nanopore sequencing process. The tool monitors the metrics available in the sequencer, the state of the computer to which the sequencer is connected, and the contents of the fast5 and fastq files. The metrics are stored in the Prometheus database and presented in interactive diagrams using the Grafana software. Thanks to the technologies used, the user can easily log in and view the sequencing status (current and archived). In addition, after appropriate configuration, the user can be informed by e-mail about exceeding the limit, e.g. 90% disk memory occupancy or abnormal state of pores in the sequencer, etc.

Source code and documentation are available at https://github.com/wkusmirek/mONiTor, an example server is available at https://eve.ii.pw.edu.pl:9007 with the username equals to _test_ and the password equals also to _test_.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

In order to install and run the mONiTor system, you do not need to install any components other than Docker.

### Installation and Usage

1. Clone the repo:
   ```sh
   git clone https://github.com/wkusmirek/mONiTor.git
   ```
2. Enter to main dir:
   ```sh
   cd mONiToR
   ```
3. Run the mONiTor system:
   ```js
   docker-compose up
   ```
4. Open web browser and go to:
   ```sh
   localhost:3000
   ```
5. Default admin user is:
   ```sh
   username: admin
   password: admin
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the Apache License Version 2.0. See `LICENSE` file for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Wiktor Kuśmirek - wiktor.kusmirek@pw.edu.pl

Project Link: [https://github.com/wkusmirek/mONiTor](https://github.com/wkusmirek/mONiTor)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [node-exporter](https://github.com/wkusmirek/node_exporter)
* [fast5-exporter](https://github.com/wkusmirek/fast5_exporter)
* [fastq-exporter](https://github.com/wkusmirek/fastq_exporter)
* [minknow-exporter](https://github.com/wkusmirek/minknow_exporter)
* [Prometheus](https://prometheus.io/)
* [Grafana](https://grafana.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/wkusmirek/mONiTor.svg?style=for-the-badge
[contributors-url]: https://github.com/wkusmirek/mONiTor/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/wkusmirek/mONiTor.svg?style=for-the-badge
[forks-url]: https://github.com/wkusmirek/mONiTor/network/members
[stars-shield]: https://img.shields.io/github/stars/wkusmirek/mONiTor.svg?style=for-the-badge
[stars-url]: https://github.com/wkusmirek/mONiTor/stargazers
[issues-shield]: https://img.shields.io/github/issues/wkusmirek/mONiTor.svg?style=for-the-badge
[issues-url]: https://github.com/wkusmirek/mONiTor/issues
[license-shield]: https://img.shields.io/github/license/wkusmirek/mONiTor.svg?style=for-the-badge
[license-url]: https://github.com/wkusmirek/mONiTor/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/wkusmirek
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
