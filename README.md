# gs_docker
A docker image for sanitizing PDF files using ghostscipt.

The input PDF
is converted to Postscript and any images are downsampled.  The resulting
Postscript file is converted back to PDF for your output.  This should
remove any active content in the original PDF.

## Building
```
docker build -t gsa .
```
## Environment
Create a subdirectory of your home directory called `gs`.  Create subdirectories
within it called `in` and `out`.
```
cd ~
mkdir gs
cd gs
mkdir in
mkdir out
```
## Running
Place your input PDF file in `~/gs/in` called, for example,
`example.pdf`.  Run the container/sanitizer app using the following command:
```
<gs_docker_dir>/sanitize_pdf.sh example.pdf
```
The resulting sanitized output PDF will appear in `~/gs/out`.

If you want to use a different subdirectory than `~/gs` for the location
of the `in` and `out` directories, use the `-d` parameter to `sanitize_pdf.py`
to specify its location.
```
<gs_docker_dir>/sanitize_pdf.sh -d /var/local/gs example.pdf
```
The input PDF should be in `/var/local/gs/in` and the output will be in
`/var/local/gs/out`.



