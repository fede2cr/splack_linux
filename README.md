# Splack Linux
Distribution for Sparc/Ultrasparc servers based on Slackware Linux

This is a historic repository as development is not active any more.

## History of Splack Linux

Slackware Linux is the oldest distribution still in service and a common distribution for users among the GULCR (Grupo de Usuarios de Linux de Costa Rica) as well as the FuerzaG hacker group and in servers for Universidad Latina (ULatina) that were using the i386 arquitecture, as this the only arquitecture supported by the distribution at the time. The big servers all where Sun and ran Solaris 2.6.

For some time Slackware turned into a team with some people in charge of PPC port, and David Cantrell in charge of a port for sparc that I used quite a bit. We had a lot of Sun hardware available at ULatina and it was my favorite distribution. At the time to use other arquitectures Debian GNU/Linux was, and still is the default as they supported about 8 arquitectures at the time.

The Slackware sparc port didn't lived long but was more than enough to get kernel, basic libraries and ssh and other tools on a Sun workstation or server.

Our process of installing a Solaris server for production was quite long and not automated at all so it took a lot of time to get a Solaris server to our standards. And by that I mostly mean installing the ton of GNU software and replacing telnet with openssh and so on. So I decided to present the case to our leader at the IT department (Alf Delgado), to let us replace Solaris for a GNU/Linux distribution since we were actually trying to make Solaris look like a distribution. At the time I assumed Debian GNU/Linux but it was rejected. Alf wanted something Slackware based.

So I decided to use Slackware for Sparc as a based to continued the distribution to a stable state where I could present the case for using GNU/Linux on sparc once again.

## Building Splack Linux

Having recently read plenty of RMS and Eric Raymond, I decided to create a community around the project from day one. By vote the name was chosen even if it wasn't my favorite of the candidates.

I rushed to update the packages that were available in Slackware for Sparc to match the versions of Patrick's Slackware-current, which was hard because most of the Slackbuild scripts won't create a perfect package by just running it. Sometimes steps are taken outside the script to finish the package like strip a library, etc. Also, using variables was and is not a common practice in the scripts requiring manual changes on lots of parts of the scripts.

A small attempt was done to submit changes to make the scripts better in this particular regards, using the writting style already in Slackware for Sparc, but so it seems that Patrick likes his scripts just the way they are, which is perfectly fine and reveared by us Slackware users.

Sometime later I continued adding packages for some of the other package series such as the network series, enough to have a production mail server running on it.

The security updates in Slackware were taken very seriously, as I did want that people who found this project on the Internet at the time, to know that they could too use this distribution for production environments. Splack started in a production environment in ULatina and bit later in a univerity in Norway as well.

The kernels were tested on all the hardware I had available at the time which let me to play a minor role in testing the XFS filesystem for the Sparc arquitecture, and also to complain about a line of patches that Alan Cox was submitting to the main Linux kernel that broke audio for Sun Blade 100 workstations. Looking back, it think the audio is still broken today in this workstation series, aldo I don't have one to double check.

## Ending development

When I left ULatina I knew that my available hardware for developing the distribution would drop to almost zero. I did tried to left succesors for the project but none was up for the task.

At the end the small community that surounded the distribution as well as some of the developers so submited packages from time to time kept it alive, and it seems even renamed a later version of it.

Sun Microsystems and the Ultrasparc processor line never regained prominance and even if they exists today, the hardware is still expensive making it unobtainable to revive any efforts. Even the development of Solaris and Ultrasparc processors seems to be comming to an end.

### Signed
*Alvaro Figueroa
fede2@fuerzag.ulatina.ac.cr
alvaro@greencore.co.cr
