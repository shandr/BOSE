<?xml version="1.0" encoding="UTF-8" standalone="no"?><map version="0.8.1"><node CREATED="1352977133403" ID="4inin797323mijo6vjn5lme4bk" MODIFIED="1352977133403" TEXT="Oracle architecture"><node CREATED="1352977133404" ID="5jl0040elcaad0lm5pbhbb3l5g" MODIFIED="1352977133404" POSITION="right" TEXT="Database Structure"><edge STYLE="bezier" WIDTH="1"/><node CREATED="1352977133404" ID="256g8b2mre0dmuvi16u9liia2v" MODIFIED="1352977133404" TEXT="Logical"><edge COLOR="#A52A2A" STYLE="bezier" WIDTH="1"/><node CREATED="1352977133404" ID="04np1qrn1o7fi2vs146psih8pb" MODIFIED="1352977133404" TEXT="Tablespaces"><edge STYLE="bezier"/><arrowlink DESTINATION="2b92qp1hrlo54od3qmngu44285" ENDARROW="Default" ID="2jk7ojb1eu6b3c2n6ucbk7pfeg" STARTARROW="None" STARTINCLINATION="-513;166"/><node CREATED="1352977133405" ID="3ae87qrkmupkd2s2jg30kedgn3" MODIFIED="1352977133405" TEXT="Set of 1 or more Datafiles"><edge STYLE="bezier"/></node><node CREATED="1352977133405" ID="1q6taghdhnd4133rqr9s69aua5" MODIFIED="1352977133405" TEXT="Collections of 1 or more segments"><edge STYLE="bezier"/></node></node><node CREATED="1352977133405" ID="784blvlu4ki0q391bkmoo59p9l" MODIFIED="1352977133405" TEXT="Segments"><edge STYLE="bezier"/><arrowlink DESTINATION="2b92qp1hrlo54od3qmngu44285" ENDARROW="Default" ID="3u7nfn53689c8llf111vi50msc" STARTARROW="None" STARTINCLINATION="-35;16"/><hook NAME="accessories/plugins/NodeNote.properties"><text>Oracle uses the term segment to describe any structure that contains data</text></hook><node CREATED="1352977133405" ID="129cb2mmsa6e5fav6d3edrb0o9" MODIFIED="1352977133405" TEXT="Set of extents allocated to logical structure like a table,index,undo..."/></node><node CREATED="1352977133405" ID="07j022qrsvi4tr0auqu33sbihb" MODIFIED="1352977133405" TEXT="Extents"><edge STYLE="bezier"/><node CREATED="1352977133405" ID="4n8r7898gd9i3g64k2i59t2o4c" MODIFIED="1352977133405" TEXT="2 or more consecutive Data blocks"/></node><node CREATED="1352977133406" ID="6vlrr6au0ijnl7drtfpe38hjoi" MODIFIED="1352977133406" TEXT="Data blocks"><edge STYLE="bezier"/><node CREATED="1352977133406" ID="3k1keenjefheqbr6ihhg4fqj7b" MODIFIED="1352977133406" TEXT="Smallest building block"/></node></node><node CREATED="1352977133406" ID="6qradk5je6d29k02nf4ceast15" LINK="http://docs.oracle.com/cd/E11882_01/server.112/e25789/physical.htm#g21431" MODIFIED="1352977133406" TEXT="Physical"><edge COLOR="#A52A2A" STYLE="bezier" WIDTH="1"/><arrowlink DESTINATION="256g8b2mre0dmuvi16u9liia2v" ENDARROW="Default" ID="3a1gdiab2rf0pb34q7l8rdfrbm" STARTARROW="None"/><node CREATED="1352977133406" ID="2b92qp1hrlo54od3qmngu44285" MODIFIED="1352977133406" TEXT="Datafiles"><edge STYLE="bezier"/><node CREATED="1352977133406" ID="5gn0iu800oj2891vep2nvu03a2" MODIFIED="1352977133406" TEXT="Store the table and index data"><edge STYLE="bezier"/></node><node CREATED="1352977133406" ID="4jdl5f2kauguhgd8pv7ks743pd" MODIFIED="1352977133406" TEXT="Formatted into fixed-sized oracle blocks"><edge STYLE="bezier"/><node CREATED="1352977133406" ID="7h9n8m6bd760usr7e5b87r6lek" MODIFIED="1352977133406" TEXT="2 KB up to 64 KB"><hook NAME="accessories/plugins/NodeNote.properties"><text>Many DBAs like to match the operating system block size to the Oracle
block size. For performance reasons, the operating system blocks should
never be larger than the Oracle blocks, but there is no reason not have them
smaller. For instance, a 1KB operating system block size and an 8KB Oracle
block size is perfectly acceptable.
</text></hook></node></node><node CREATED="1352977133406" ID="0m03d1tp3d24mhoh9vftslkdag" MODIFIED="1352977133406" TEXT="At OS level consists from OS blocks"><edge STYLE="bezier"/></node></node><node CREATED="1352977133407" ID="0podfr26ipqk3bpd46cpmubq23" MODIFIED="1352977133407" TEXT="Redo Log Files"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The redo log stores a chronologically ordered chain of every change vector applied to
the database. This will be the bare minimum of information required to reconstruct,
or redo, all work that has been done. If a datafile (or the whole database) is damaged
or destroyed, these change vectors can be applied to datafile backups to redo the
work, bringing them forward in time until the moment that the damage occurred.
The redo log consists of two file types: the online redo log files (which are required
for continuous database operation) and the archive log files (which are optional for
database operation, but mandatory for point-in-time recovery).
</text></hook><node CREATED="1352977133407" ID="0eqbs76336ddi7qvtvanigscl5" MODIFIED="1352977133407" TEXT="Record all changes made to DB"><hook NAME="accessories/plugins/NodeNote.properties"><text>EXAM TIP Every database must have at least two online redo log file groups
to function. Each group should have at least two members for safety.
</text></hook></node></node><node CREATED="1352977133407" ID="4lbnca21ni276b358ih0b8souo" MODIFIED="1352977133407" TEXT="Controlfile"><edge STYLE="bezier"/><node CREATED="1352977133407" ID="7nbthqikpv4d3cdgqeu8dmns4q" MODIFIED="1352977133407" TEXT="Phys. structure details"><node CREATED="1352977133407" ID="6po3mq2v18g0gkcnt2g5rjn03q" MODIFIED="1352977133407" TEXT="Names and locations of DF, RLF"><edge STYLE="bezier"/></node><node CREATED="1352977133407" ID="0b9dejofn68sukgafoed9u2rdk" MODIFIED="1352977133407" TEXT="Current log sequence numbers"><edge STYLE="bezier"/></node><node CREATED="1352977133407" ID="6ludulekhet6eljvsl5ebjcvb0" MODIFIED="1352977133407" TEXT="backup set details"><edge STYLE="bezier"/></node><node CREATED="1352977133407" ID="0dfj1blnnp62cd3ns6u5d5ljo4" MODIFIED="1352977133407" TEXT="System change number(SCN)"><edge STYLE="bezier"/><node CREATED="1352977133407" ID="3m5glfs7b35fu71gr05etucr7d" MODIFIED="1352977133407" TEXT="Indicates the most recent version of commited changes to DB"><edge STYLE="bezier"/></node></node></node></node><node CREATED="1352977133408" ID="5v35t59gi9lihpde405eouu5ho" MODIFIED="1352977133408" TEXT="External files"><edge STYLE="bezier"/><node CREATED="1352977133408" ID="7pp5ii5gj0gmd45lq5v3v54qci" MODIFIED="1352977133408" TEXT="instance parameter file"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>When an Oracle instance is started, the SGA
structures initialize in memory and the background processes start according
to settings in the parameter file. This is the only file that needs to exist in order
to start an instance. There are several hundred parameters, but only one is
required: the DB_NAME parameter. All others have defaults. So the parameter
file can be quite small, but it must exist. It is sometimes referred to as a pfile
or spfile, and its creation is described in Chapter 3.
</text></hook></node><node CREATED="1352977133408" ID="14onlpc0vus34i5etockvgjvvc" MODIFIED="1352977133408" TEXT="Password file"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text> Users establish sessions by presenting a username and a
password. The Oracle server authenticates these against user definitions stored
in the data dictionary. The data dictionary is a set of tables in the database; it
is therefore inaccessible if the database is not open. There are occasions when
you need to be authenticated before the data dictionary is available: when
you need to start the database, or indeed create it. An external password file is
one means of doing this. It contains a small number (typically less than half
a dozen) of user names and passwords that exist outside the data dictionary,
and which can therefore be used to connect to an instance before the data
dictionary is available.</text></hook></node><node CREATED="1352977133408" ID="7r8l6sjb6c8rhne452r55ujhoi" MODIFIED="1352977133408" TEXT="Archive redo log files"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>When an online redo log file fills, the ARCn process
copies it to an archive redo log file. Once this is done, the archive log is no
longer part of the database in that it is not required for continued operation
of the database. It is, however, essential if it is ever necessary to recover a
datafile backup, and Oracle does provide facilities for managing the archive
redo log files.
</text></hook></node><node CREATED="1352977133408" ID="6icaj0mq8hd14b2e4ej0kklolc" MODIFIED="1352977133408" TEXT="Alert log and trace files"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The alert log is a continuous stream of messages
regarding certain critical operations affecting the instance and the database.
Not everything is logged: only events that are considered to be really important,
such as startup and shutdown; changes to the physical structures of the
database; changes to the parameters that control the instance. Trace files are
generated by background processes when they detect error conditions, and
sometimes to report specific events.
</text></hook></node></node></node></node><node CREATED="1352977133408" ID="5heoclm3078tg06h7g41sbfqca" MODIFIED="1352977133408" POSITION="right" TEXT="Data Dictionary"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The data dictionary contains metadata that describes the database, both physically
and logically, and its contents. User definitions, security information, integrity
constraints, and (with release 10g and later) performance monitoring information are
all stored in the data dictionary. It is stored as a set of segments in the SYSTEM and
SYSAUX tablespaces.
</text></hook><node CREATED="1352977133409" ID="641r8e2nqktm0uc8kcfcidkamk" MODIFIED="1352977133409" TEXT="Stored in SYSTEM and SYSAUX tablespaces"><edge STYLE="bezier"/></node><node CREATED="1352977133409" ID="7aorbhuip5bs1n9hh00vbd1qq8" MODIFIED="1352977133409" TEXT="Stores"><edge STYLE="bezier"/><node CREATED="1352977133409" ID="23lmmrrhj9acf0hnvu4eoqms1n" MODIFIED="1352977133409" TEXT="User definitions"/><node CREATED="1352977133409" ID="2nd9fp0ogs7fdca98h38o1c8fo" MODIFIED="1352977133409" TEXT="integrity constraints"/><node CREATED="1352977133409" ID="0veo4oj4pp14srlh3uvftllel5" MODIFIED="1352977133409" TEXT="Security information"/><node CREATED="1352977133409" ID="488rh3j702h3hbbsos4q023d86" MODIFIED="1352977133409" TEXT="performance monitoring"/></node><node CREATED="1352977133409" ID="0upo2tr5pit3mg2296osuqlbm4" MODIFIED="1352977133409" TEXT="Generated at database creation time"><edge STYLE="bezier"/></node><node CREATED="1352977133409" ID="28bk08jdp6anr5itlkt9u1vfum" MODIFIED="1352977133409" TEXT="Direct access is not allowed"><edge STYLE="bezier"/></node><node CREATED="1352977133409" ID="2dgqapevb5a1ind6al811dlisc" MODIFIED="1352977133409" TEXT="Views"><edge STYLE="bezier"/><node CREATED="1352977133410" ID="7iq5klp8bfvvpohjpm20kmambp" MODIFIED="1352977133410" TEXT="DBA_"><node CREATED="1352977133410" ID="5667fhqe01am0gi79em3ejeg74" MODIFIED="1352977133410" TEXT="Rows for every object in DB"/></node><node CREATED="1352977133410" ID="17p1okf04je2krvbr4bcv07a91" MODIFIED="1352977133410" TEXT="ALL_"><node CREATED="1352977133410" ID="1bsba00sl2a0nrv0nlu5g8534a" MODIFIED="1352977133410" TEXT="Objects user has access to"/></node><node CREATED="1352977133410" ID="28q96ak3as8oc350b80gcblnh6" MODIFIED="1352977133410" TEXT="USER_"><hook NAME="accessories/plugins/NodeNote.properties"><text> Any view prefixed USER_ will describe
objects owned by the user querying the view.</text></hook><node CREATED="1352977133410" ID="4ufnqgo2br6q9g5atc5sm6jd96" MODIFIED="1352977133410" TEXT="Objects user owns"/></node></node></node><node CREATED="1352977133410" ID="1lbimjffkefekc3a0qgniqn3i2" LINK="http://docs.oracle.com/cd/E11882_01/server.112/e25789/startup.htm#g12154" MODIFIED="1352977133410" POSITION="left" TEXT="Instance"><edge STYLE="bezier" WIDTH="1"/><arrowlink DESTINATION="4lbnca21ni276b358ih0b8souo" ENDARROW="Default" ENDINCLINATION="-173;85" ID="10019o3fq9sie8rglosohlu6jh" STARTARROW="None" STARTINCLINATION="147;-222"/><arrowlink DESTINATION="7pp5ii5gj0gmd45lq5v3v54qci" ENDARROW="Default" ENDINCLINATION="-412;172" ID="1m1ue4488loencgeh0hvp15ckh" STARTARROW="None"/><hook NAME="accessories/plugins/NodeNote.properties"><text>An instance is defined by an instance parameter file. The parameter file contains
directives that define how the instance should be initialized in memory: the size of the
memory structures, and the behavior of the background processes. After building the
instance, it is said to be in no mount mode. In no mount mode, the instance exists but
has not connected to a database. Indeed, the database may not even exist at this point.
All parameters, either specified by the parameter file or implied, have default values,
except for one: the parameter DB_NAME. The DB_NAME parameter names the database
to which the instance will connect. This name is also embedded in the controlfile. The
CONTROL_FILES parameter points the instance to the location of the controlfile. This
parameter defines the connection between the instance and the database. When the
instance reads the controlfile (which it will find by reading the CONTROL_FILES
parameter) if there is a mismatch in database names, the database will not mount. In
mount mode, the instance has successfully connected to the controlfile. If the controlfile
is damaged or nonexistent, it will be impossible to mount the database. The controlfile is
small, but vital.
Within the controlfile, there are pointers to the other files (the online redo logfiles
and the datafiles) that make up the rest of the database. Having mounted the database,
the instance can open the database by locating and opening these other files. An open
database is a database where the instance has opened all the available online redo
logfiles and datafiles. Also within the controlfile, there is a mapping of datafiles to
tablespaces. This lets the instance identify the datafile(s) that make(s) up the SYSTEM
tablespace within which it will find the data dictionary. The data dictionary lets the
instance resolve references to objects referred to in SQL code to the segments in which
they reside, and work out where, physically, the objects are.
</text></hook><node CREATED="1352977133411" ID="1jphs9eut3k2sfe9mp9htnq383" LINK="http://docs.oracle.com/cd/E11882_01/server.112/e25789/process.htm#BABIDJJA" MODIFIED="1352977133411" TEXT="Background Processes"><edge COLOR="#1E90FF" STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The server process is representative of the
server side of a client-server connection, with the client component consisting of a
user session and user process described earlier. The server process interacts with the
datafiles to fetch a data block into the buffer cache. This may be modified by some
DML, dirtying the block in the buffer cache. The change vector is copied into the
circular log buffer that is flushed in almost real-time by the log writer process (LGWR)
to the online redo log files. If archivelog mode of the database is configured, the
archiver process (ARCn) copies the online redo log files to an archive location.
Eventually, some condition may cause the database writer process (DBWn) to write
the dirty block to one of the datafiles. The mechanics of the background processes and
their interaction with various SGA structures are detailed in the sections that follow.
There is a platform variation that must be cleared up before discussing processes.
On Linux and Unix, all the Oracle processes are separate operating system processes,
each with a unique process number. On Windows, there is one operating system
process (called ORACLE.EXE) for the whole instance: the Oracle processes run as
separate threads within this one process.
</text></hook><node CREATED="1352977133411" ID="5l8ht367olg8dq49fu0vmkh46l" MODIFIED="1352977133411" TEXT="PMON"><edge STYLE="bezier"/><node CREATED="1352977133411" ID="2pabohf2vb0tuvdap1ga3c3tiu" MODIFIED="1352977133411" TEXT="cleans up after finished and failed processes"/></node><node CREATED="1352977133411" ID="16us4t7k5rpnfvo3mk4lnfsnm0" MODIFIED="1352977133411" TEXT="SMON"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>In brief, SMON mounts a database by
locating and validating the database controlfile. It then opens a database by locating
and validating all the datafiles and online log files. Once the database is opened and
in use, SMON is responsible for various housekeeping tasks, such as coalescing free
space in datafiles.
</text></hook><node CREATED="1352977133411" ID="1a513jmgia7icnfc8hsl9mfj3k" MODIFIED="1352977133411" TEXT="perform crash recovery and coaleses extents"/><node CREATED="1352977133411" ID="2rie0ml2qv79708gu0jjl4cbh1" MODIFIED="1352977133411" TEXT="initially has the task of mounting and opening a database"/></node><node CREATED="1352977133411" ID="53h40puj635r2jafb29ucf27tf" MODIFIED="1352977133411" TEXT="DBWn"><edge STYLE="bezier"/><arrowlink DESTINATION="0rmt938oo3r7ntnbshgdc7hq67" ENDARROW="Default" ENDINCLINATION="18;-49" ID="12hkkpc3p0p937ao6aef356333" STARTARROW="None" STARTINCLINATION="59;203"/><hook NAME="accessories/plugins/NodeNote.properties"><text>DBWn writes dirty buffers from the database buffer cache to the datafiles—but
it does not write the buffers as they become dirty. On the contrary: it writes as few
buffers as possible. The general idea is that disk I/O is bad for performance, so don’t
do it unless it really is needed. If a block in a buffer has been written to by a session,
there is a reasonable possibility that it will be written to again—by that session, or a
different one. Why write the buffer to disk, if it may well be dirtied again in the near
future? The algorithm DBWn uses to select dirty buffers for writing to disk (which will
clean them) will select only buffers that have not been recently used. So if a buffer is
very busy, because sessions are repeatedly reading or writing it, DBWn will not write
it to disk. There could be hundreds or thousands of writes to a buffer before DBWn
cleans it. It could be that in a buffer cache of a million buffers, a hundred thousand of
them are dirty—but DBWn might only write a few hundred of them to disk at a time.
These will be the few hundred that no session has been interested in for some time.
</text></hook><node CREATED="1352977133412" ID="3d4b8o138u6q158dq5ulusgms6" MODIFIED="1352977133412" TEXT="writes modified data from the buffer cache to DF"/><node CREATED="1352977133412" ID="26kjh619c017gedrdk8s8tmaen" MODIFIED="1352977133412" TEXT="Write do disk if:"><node CREATED="1352977133412" ID="7mfeqoaku60hen304sh189h04s" MODIFIED="1352977133412" TEXT="No free buffers"/><node CREATED="1352977133412" ID="25dnanorn5mghm209sfob8q8ma" MODIFIED="1352977133412" TEXT="too many dirty buffers"/><node CREATED="1352977133412" ID="4527aqs45nd6eto1ntcgjmes7b" MODIFIED="1352977133412" TEXT="3 seconds timout"/><node CREATED="1352977133412" ID="5iu3bu5gkeulqc7eq5qlbj1rov" MODIFIED="1352977133412" TEXT="checkpoint"><node CREATED="1352977133412" ID="7av1gl1mae8l44kplrguap7t6o" MODIFIED="1352977133412" TEXT="all dirty buffers are written"/></node></node></node><node CREATED="1352977133412" ID="2jok7mktggtve5eloc91ulpl1l" MODIFIED="1352977133412" TEXT="LGWR"><edge STYLE="bezier"/><arrowlink DESTINATION="5l5c9pbf2l7cnp45p38g4n5095" ENDARROW="Default" ENDINCLINATION="-5;-71" ID="556vnkpbttnnt8e8cb0iurr9c8" STARTARROW="None" STARTINCLINATION="-301;184"/><hook NAME="accessories/plugins/NodeNote.properties"><text>When a session makes any change (by executing INSERT, UPDATE, or DELETE
commands) to blocks in the database buffer cache, before it applies the change to the
block it writes out the change vector that it is about to apply to the log buffer. To
avoid loss of work, these change vectors must be written to disk with only minimal
delay. To this end, the LGWR streams the contents of the log buffer to the online redo
log files on disk in very nearly real-time. And when a session issues a COMMIT, the
LGWR writes in real-time: the session hangs, while LGWR writes the buffer to disk.
Only then is the transaction recorded as committed, and therefore nonreversible.
</text></hook><node CREATED="1352977133412" ID="15edkkrokvpsvo30nahgcqemdu" MODIFIED="1352977133412" TEXT="Writes redo log buffer contents to the online RLF"/><node CREATED="1352977133413" ID="0tf5h3u76v7bgckgoevclusooo" MODIFIED="1352977133413" TEXT="Writes to disk if:"><node CREATED="1352977133413" ID="00ifjntan9cmcdbjc6e51r2l2o" MODIFIED="1352977133413" TEXT="Session issues a commit"/><node CREATED="1352977133413" ID="26b11e06g2i51onf3pbumdfvm9" MODIFIED="1352977133413" TEXT="log buffer is one-third full"/><node CREATED="1352977133413" ID="0i0spvpp4qqso2mmi983f77kks" MODIFIED="1352977133413" TEXT="DBWn is about to write dirty buffers"><hook NAME="accessories/plugins/NodeNote.properties"><text>Third, when DBWn needs to write dirty buffers from the database buffer cache to
the datafiles, before it does so it will signal LGWR to flush the log buffer to the online
redo log files. This is to ensure that it will always be possible to reverse an uncommitted
transaction. 
For now, it is necessary to know that it is entirely possible for DBWn to write an
uncommitted transaction to the datafiles. This is fine, so long as the undo data needed
to reverse the transaction is guaranteed to be available. Generating undo data also
generates change vectors. As these will be in the redo log files before the datafiles are
updated, the undo data needed to roll back a transaction (should this be necessary)
can be reconstructed if necessary.
</text></hook></node></node></node><node CREATED="1352977133413" ID="3g2fv8ol4l663lmbiq6i54f7p4" LINK="http://docs.oracle.com/cd/E11882_01/server.112/e25789/img/cncpt228.gif" MODIFIED="1352977133413" TEXT="CKPT"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>from 8i onward the DBWn performs incremental checkpoints instead of full checkpoints.
The incremental checkpoint mechanism instructs DBWn to write out dirty buffers at a
constant rate, so that there is always a predictable gap between DBWn (which writes
blocks on a lazy algorithm) and LGWR (which writes change vectors in near real
time). Incremental checkpointing results in much smoother performance and more
predictable recovery times than the older full checkpoint mechanism.

EXAM TIP When do full checkpoints occur? Only on request, or as part of an
orderly database shutdown.
</text></hook><node CREATED="1352977133413" ID="74eaauruumm89ctdm0kmgtkkoo" MODIFIED="1352977133413" TEXT="Updates the headers of all DF to record the checkpoints details"/><node CREATED="1352977133413" ID="58d3h1r48p2mtd4mp2vmbvngt7" MODIFIED="1352977133413" TEXT="signals DBWn to write blocks to disk"/></node><node CREATED="1352977133413" ID="5uiq5l9nqalb7901qp5kpmnud5" MODIFIED="1352977133413" TEXT="ARCn"><edge STYLE="bezier"/><node CREATED="1352977133413" ID="7fgj743k9j8o5f3nmgkggu6h4c" MODIFIED="1352977133413" TEXT="Archives filled onlie redo log files"/></node><node CREATED="1352977133413" ID="33aporqcsstdrl6fh82gi1rj85" MODIFIED="1352977133414" TEXT="MMON"><edge STYLE="bezier"/><node CREATED="1352977133414" ID="0f3jhh9its4dqa949dcub1k296" MODIFIED="1352977133414" TEXT="Captures statistics from SGA and writes them to the data dictionary"/><node CREATED="1352977133414" ID="00ddl5kgodu774ev7feu5o4jf4" MODIFIED="1352977133414" TEXT="launches the Automatic Database Diagnostic Monitor(ADDDM)"/><node CREATED="1352977133414" ID="3sm8mn9118q3aui0bb7n7qs6lu" MODIFIED="1352977133414" TEXT="every hour"/></node><node CREATED="1352977133414" ID="5jgo2n2ouootoncksfeh1s6us3" MODIFIED="1352977133414" TEXT="MMAN"><edge STYLE="bezier"/><node CREATED="1352977133414" ID="5vcn45q4teb8p6irmpjqksklhq" MODIFIED="1352977133414" TEXT=" observe the demand for PGA memory and SGA memory, and allocate memory to sessions and to SGA structures as needed"/></node><node CREATED="1352977133414" ID="6hd33985snbr4ds9598co6iqmt" MODIFIED="1352977133414" TEXT="Others"><edge STYLE="bezier"/></node></node><node CREATED="1352977133414" ID="64qrhjqm6gvs3h9niv973tm1mv" MODIFIED="1352977133414" TEXT="Memory Structure"><edge COLOR="#1E90FF" STYLE="bezier" WIDTH="1"/><node CREATED="1352977133414" ID="602ot0iq9oui1n2jg2qhetrp91" LINK="http://docs.oracle.com/cd/E11882_01/server.112/e25789/memory.htm#i10093" MODIFIED="1352977133414" TEXT="SGA"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The SGA is a group of shared memory structures, known as SGA components, that contain data and control information for one Oracle Database instance. The SGA is shared by all server and background processes. Examples of data stored in the SGA include cached data blocks and shared SQL areas.</text></hook><node CREATED="1352977133414" ID="0rmt938oo3r7ntnbshgdc7hq67" MODIFIED="1352977133414" TEXT="database buffer cache"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The database buffer cache is Oracle’s work area for executing SQL. When updating data,
users’ sessions don’t directly update the data on disk. The data blocks containing the
data of interest are first copied into the database buffer cache (if they are not already
there). Changes (such as inserting new rows and deleting or modifying existing rows)
are applied to these copies of the data blocks in the database buffer cache. The blocks
will remain in the cache for some time afterward, until the buffer they are occupying
is needed for caching another block.
When querying data, the data also goes via the cache. The session works out which
blocks contain the rows of interest and copies them into the database buffer cache (if
they are not already there); the relevant rows are then transferred into the session’s
PGA for further processing. And again, the blocks remain in the database buffer cache
for some time afterward.
</text></hook><node CREATED="1352977133415" ID="6jg9pp7nd7c6s3u8h5eosrnvas" MODIFIED="1352977133415" TEXT="Keep buffer pool"/><node CREATED="1352977133415" ID="3mmi3l8gld4nr4qv0lset43bpr" MODIFIED="1352977133415" TEXT="Recycle buffer pool"/><node CREATED="1352977133415" ID="1953nccu3fhipth767c2n93ig7" MODIFIED="1352977133415" TEXT="Default buffer pool"/></node><node CREATED="1352977133415" ID="5l5c9pbf2l7cnp45p38g4n5095" MODIFIED="1352977133415" TEXT="Redo Log Buffer"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The log buffer is a small, short-term staging area for change vectors before they are written to the redo log on disk. A change vector is a modification applied to something; executing DML statements generates change vectors applied to data. The redo log is the database’s guarantee that data will never be lost. Whenever a data block is changed, the change vectors applied to the block are written out to the redo log, from which they can be extracted and applied to datafile backups if it is ever necessary to restore a datafile.
Redo is not written directly to the redo log files by session server processes. If it were, the sessions would have to wait for disk I/O operations to complete whenever they executed a DML statement. Instead, sessions write redo to the log buffer, in memory. This is much faster than writing to disk. The log buffer (which may contain change vectors from many sessions, interleaved with each other) is then written out to the redo log files. One write of the log buffer to disk may therefore be a batch of many change vectors from many transactions. Even so, the change vectors in the log buffer are written to disk in very nearly real time—and when a session issues a COMMIT statement, the log buffer write really does happen in real time. The writes are done by the log writer background process, the LGWR.
</text></hook><node CREATED="1352977133415" ID="0bc5pn6u3c0rs837kh1vqfdtju" MODIFIED="1352977133415" TEXT="can not be dynamically changed"/></node><node CREATED="1352977133415" ID="07e08qv1rj8s59njdc8f1teqk5" MODIFIED="1352977133415" TEXT="Shared pool"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text> The shared pool itself can be resized dynamically, either in response to the DBA’s instructions or through being managed automatically.
</text></hook><node CREATED="1352977133415" ID="4qhle4en8qskafjbhuhg3ks0bu" MODIFIED="1352977133415" TEXT="The library cache"><hook NAME="accessories/plugins/NodeNote.properties"><text>The library cache is a memory area for storing recently executed code, in its parsed
form. Parsing is the conversion of code written by programmers into something
executable, and it is a process which Oracle does on demand. By caching parsed
code in the shared pool, it can be reused greatly improving performance. Parsing
SQL code takes time. </text></hook></node><node CREATED="1352977133415" ID="0ev3cbk1tuclc4vmcl36o53ql1" MODIFIED="1352977133415" TEXT="The data dictionary cache"><hook NAME="accessories/plugins/NodeNote.properties"><text>The data dictionary cache is sometimes referred to as the row cache. Whichever term
you prefer, it stores recently used object definitions: descriptions of tables, indexes,
users, and other metadata definitions. Keeping such definitions in memory in the
SGA, where they are immediately accessible to all sessions, rather than each session
having to read them repeatedly from the data dictionary on disk, enhances parsing
performance.
</text></hook></node><node CREATED="1352977133416" ID="5d13u4n7i1m46h3reabm4a1s59" MODIFIED="1352977133416" TEXT="PL/SQL area"><hook NAME="accessories/plugins/NodeNote.properties"><text>Stored PL/SQL objects are procedures, functions, packaged procedures and functions,
object type definitions, and triggers. These are all stored in the data dictionary, as
source code and also in their compiled form. When a stored PL/SQL object is invoked
by a session, it must be read from the data dictionary. To prevent repeated reading, the
objects are then cached in the PL/SQL area of the shared pool.
</text></hook></node><node CREATED="1352977133416" ID="4vreoknir5jvet34ooqr5m6p43" MODIFIED="1352977133416" TEXT="SQL query and PL/SQL function result cache"><hook NAME="accessories/plugins/NodeNote.properties"><text> In many applications, the same query is
executed many times, by either the same session or many different sessions. Creating
a result cache lets the Oracle server store the results of such queries in memory. The
next time the query is issued, rather than running the query the server can retrieve the
cached result.
</text></hook></node></node><node CREATED="1352977133416" ID="50nu6fg4crivjteo49jqrdqm3u" MODIFIED="1352977133416" TEXT="large pool(opt)"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The large pool is an optional area that, if created, will be used automatically by
various processes that would otherwise take memory from the shared pool. One
major use of the large pool is by shared server processes, described in Chapter 4 in the
section “Use the Oracle Shared Server Architecture.” Parallel execution servers will also
use the large pool, if there is one. In the absence of a large pool, these processes will
use memory on the shared pool. This can cause contention for the shared pool, which
may have negative results. If shared servers or parallel servers are being used, a large
pool should always be created. Some I/O processes may also make use of the large
pool, such as the processes used by the Recovery Manager when it is backing up to a
tape device.
</text></hook><node CREATED="1352977133416" ID="00r054ca92au5ujk563ag3529j" MODIFIED="1352977133416" TEXT="dynamic and can be autom. manged"/></node><node CREATED="1352977133416" ID="3turgl9ck0nghn6sbmah64kij8" MODIFIED="1352977133416" TEXT="Java pool(opt)"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The Java pool is only required if your application is going to run Java stored procedures
within the database: it is used for the heap space needed to instantiate the Java objects.
</text></hook><node CREATED="1352977133416" ID="251nocnlbjskssuabt438pl4bc" MODIFIED="1352977133416" TEXT="dynamic and can be automatically manage"/></node><node CREATED="1352977133416" ID="4s49qg1ha2tfkaabkhqbbb7qff" MODIFIED="1352977133417" TEXT="Streams pool(opt)"><edge STYLE="bezier" WIDTH="1"/><hook NAME="accessories/plugins/NodeNote.properties"><text>The Streams pool is used by Oracle Streams. The mechanism used by Streams is to extract change vectors from the redo log and
to reconstruct statements that were executed from these—or statements that would
have the same net effect. These statements are executed at the remote database. The
processes that extract changes from redo and the processes that apply the changes
need memory: this memory is the Streams pool. From database release 10g it is
possible to create and to resize the Streams pool after instance startup; this creation
and sizing can be completely automatic. With earlier releases it had to be defined at
startup and was a fixed size.
</text></hook></node></node><node CREATED="1352977133417" ID="4rj4pnseii0nital6sk6r8vqsd" MODIFIED="1352977133417" TEXT="PGA"><edge STYLE="bezier"/><hook NAME="accessories/plugins/NodeNote.properties"><text>A PGA is a nonshared memory region that contains data and control information exclusively for use by an Oracle process. The PGA is created by Oracle Database when an Oracle process is started.

One PGA exists for each server process and background process. The collection of individual PGAs is the total instance PGA, or instance PGA. Database initialization parameters set the size of the instance PGA, not individual PGAs</text></hook><node CREATED="1352977133417" ID="33kd0abud8070886evrh0v2gg5" MODIFIED="1352977133417" TEXT="SQL Work Areas"><edge STYLE="bezier"/><node CREATED="1352977133417" ID="5r5u8aiv2u948pdujirfu0vji5" MODIFIED="1352977133417" TEXT="Sort Area"><edge STYLE="bezier"/></node><node CREATED="1352977133417" ID="3g4sttjsfti3e2120uskg306ue" MODIFIED="1352977133417" TEXT="Hash Area"><edge STYLE="bezier"/></node><node CREATED="1352977133417" ID="3k7t2e5tcp4rkslos6a1o9nit5" MODIFIED="1352977133417" TEXT="Bitmap Merge Area"><edge STYLE="bezier"/></node></node><node CREATED="1352977133417" ID="1mcatdjusii01hq132a8tt4eko" MODIFIED="1352977133417" TEXT="Private SQL Area"><edge STYLE="bezier"/><node CREATED="1352977133418" ID="1kgae5sj1o5s03dmt1784bt4ua" MODIFIED="1352977133418" TEXT="Session Memory"><edge STYLE="bezier"/></node><node CREATED="1352977133418" ID="6kg67n6jvld1lrdd4ur9nekcs1" MODIFIED="1352977133418" TEXT="Persistent Area"><edge STYLE="bezier"/></node><node CREATED="1352977133418" ID="3k8hldi2kf2k2vpvlkj11eh3mg" MODIFIED="1352977133418" TEXT="Runtime Area"><edge STYLE="bezier"/></node></node></node><node CREATED="1352977133418" ID="2p23p5g4lbhvft0tq51f0abv9p" MODIFIED="1352977133418" TEXT="UGA(User Global Area)"><edge STYLE="bezier"/></node></node><node CREATED="1352977133418" ID="5slu51am14hnn4e77rssqc6f8g" MODIFIED="1352977133418" TEXT="Interacting components"><edge COLOR="#1E90FF" STYLE="bezier" WIDTH="1"/><node CREATED="1352977133418" ID="7iu3c25tt09p840cpa0v43glc6" MODIFIED="1352977133418" TEXT="User interacts with user process"><edge STYLE="linear"/><hook NAME="accessories/plugins/NodeNote.properties"><text>A user session is a user process that is connected to a server process</text></hook><node CREATED="1352977133418" ID="1b951o3i93gp3ir7cefkor8ks7" MODIFIED="1352977133418" TEXT="User process interacts with a server process"><edge/><node CREATED="1352977133418" ID="7bikch87vg8catidcmtsm3vj2v" MODIFIED="1352977133418" TEXT="Server process int. with an instance"><edge/><node CREATED="1352977133418" ID="5vshehsc263sbdl0vhuj3shva8" MODIFIED="1352977133418" TEXT="Instance int. with DB"><edge/></node></node></node></node></node></node></node></map>