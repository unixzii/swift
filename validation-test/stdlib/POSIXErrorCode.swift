// RUN: %target-run-simple-swift
// REQUIRES: executable_test
// REQUIRES: VENDOR=apple || OS=linux-androideabi || OS=linux-android || OS=linux-gnu || OS=openbsd
// UNSUPPORTED: freestanding

import Swift
import StdlibUnittest

#if canImport(Darwin)
  import Darwin
#elseif canImport(Glibc)
  import Glibc
#else
#error("Unsupported platform")
#endif

var POSIXErrorCodeTestSuite = TestSuite("POSIXErrorCode")

#if canImport(Darwin)

POSIXErrorCodeTestSuite.test("Darwin POSIX error codes constants") {
  expectEqual(EPERM, POSIXErrorCode.EPERM.rawValue)
}

#elseif os(Linux) || os(Android)

POSIXErrorCodeTestSuite.test("Linux POSIX error codes constants") {
  expectEqual(EPERM, POSIXErrorCode.EPERM.rawValue)
  expectEqual(ENOENT, POSIXErrorCode.ENOENT.rawValue)
  expectEqual(ESRCH, POSIXErrorCode.ESRCH.rawValue)
  expectEqual(EINTR, POSIXErrorCode.EINTR.rawValue)
  expectEqual(EIO, POSIXErrorCode.EIO.rawValue)
  expectEqual(ENXIO, POSIXErrorCode.ENXIO.rawValue)
  expectEqual(E2BIG, POSIXErrorCode.E2BIG.rawValue)
  expectEqual(ENOEXEC, POSIXErrorCode.ENOEXEC.rawValue)
  expectEqual(EBADF, POSIXErrorCode.EBADF.rawValue)
  expectEqual(ECHILD, POSIXErrorCode.ECHILD.rawValue)
  expectEqual(EAGAIN, POSIXErrorCode.EAGAIN.rawValue)
  expectEqual(ENOMEM, POSIXErrorCode.ENOMEM.rawValue)
  expectEqual(EACCES, POSIXErrorCode.EACCES.rawValue)
  expectEqual(EFAULT, POSIXErrorCode.EFAULT.rawValue)
  expectEqual(ENOTBLK, POSIXErrorCode.ENOTBLK.rawValue)
  expectEqual(EBUSY, POSIXErrorCode.EBUSY.rawValue)
  expectEqual(EXDEV, POSIXErrorCode.EXDEV.rawValue)
  expectEqual(ENODEV, POSIXErrorCode.ENODEV.rawValue)
  expectEqual(ENOTDIR, POSIXErrorCode.ENOTDIR.rawValue)
  expectEqual(EISDIR, POSIXErrorCode.EISDIR.rawValue)
  expectEqual(EINVAL, POSIXErrorCode.EINVAL.rawValue)
  expectEqual(ENFILE, POSIXErrorCode.ENFILE.rawValue)
  expectEqual(EMFILE, POSIXErrorCode.EMFILE.rawValue)
  expectEqual(ENOTTY, POSIXErrorCode.ENOTTY.rawValue)
  expectEqual(ETXTBSY, POSIXErrorCode.ETXTBSY.rawValue)
  expectEqual(EFBIG, POSIXErrorCode.EFBIG.rawValue)
  expectEqual(ENOSPC, POSIXErrorCode.ENOSPC.rawValue)
  expectEqual(ESPIPE, POSIXErrorCode.ESPIPE.rawValue)
  expectEqual(EROFS, POSIXErrorCode.EROFS.rawValue)
  expectEqual(EMLINK, POSIXErrorCode.EMLINK.rawValue)
  expectEqual(EPIPE, POSIXErrorCode.EPIPE.rawValue)
  expectEqual(EDOM, POSIXErrorCode.EDOM.rawValue)
  expectEqual(ERANGE, POSIXErrorCode.ERANGE.rawValue)
  expectEqual(EDEADLK, POSIXErrorCode.EDEADLK.rawValue)
  expectEqual(ENAMETOOLONG, POSIXErrorCode.ENAMETOOLONG.rawValue)
  expectEqual(ENOLCK, POSIXErrorCode.ENOLCK.rawValue)
  expectEqual(ENOSYS, POSIXErrorCode.ENOSYS.rawValue)
  expectEqual(ENOTEMPTY, POSIXErrorCode.ENOTEMPTY.rawValue)
  expectEqual(ELOOP, POSIXErrorCode.ELOOP.rawValue)
  expectEqual(EWOULDBLOCK, POSIXErrorCode.EWOULDBLOCK.rawValue)
  expectEqual(ENOMSG, POSIXErrorCode.ENOMSG.rawValue)
  expectEqual(EIDRM, POSIXErrorCode.EIDRM.rawValue)
  expectEqual(ECHRNG, POSIXErrorCode.ECHRNG.rawValue)
  expectEqual(EL2NSYNC, POSIXErrorCode.EL2NSYNC.rawValue)
  expectEqual(EL3HLT, POSIXErrorCode.EL3HLT.rawValue)
  expectEqual(EL3RST, POSIXErrorCode.EL3RST.rawValue)
  expectEqual(ELNRNG, POSIXErrorCode.ELNRNG.rawValue)
  expectEqual(EUNATCH, POSIXErrorCode.EUNATCH.rawValue)
  expectEqual(ENOCSI, POSIXErrorCode.ENOCSI.rawValue)
  expectEqual(EL2HLT, POSIXErrorCode.EL2HLT.rawValue)
  expectEqual(EBADE, POSIXErrorCode.EBADE.rawValue)
  expectEqual(EBADR, POSIXErrorCode.EBADR.rawValue)
  expectEqual(EXFULL, POSIXErrorCode.EXFULL.rawValue)
  expectEqual(ENOANO, POSIXErrorCode.ENOANO.rawValue)
  expectEqual(EBADRQC, POSIXErrorCode.EBADRQC.rawValue)
  expectEqual(EBADSLT, POSIXErrorCode.EBADSLT.rawValue)
  expectEqual(EDEADLOCK, POSIXErrorCode.EDEADLOCK.rawValue)
  expectEqual(EBFONT, POSIXErrorCode.EBFONT.rawValue)
  expectEqual(ENOSTR, POSIXErrorCode.ENOSTR.rawValue)
  expectEqual(ENODATA, POSIXErrorCode.ENODATA.rawValue)
  expectEqual(ETIME, POSIXErrorCode.ETIME.rawValue)
  expectEqual(ENOSR, POSIXErrorCode.ENOSR.rawValue)
  expectEqual(ENONET, POSIXErrorCode.ENONET.rawValue)
  expectEqual(ENOPKG, POSIXErrorCode.ENOPKG.rawValue)
  expectEqual(EREMOTE, POSIXErrorCode.EREMOTE.rawValue)
  expectEqual(ENOLINK, POSIXErrorCode.ENOLINK.rawValue)
  expectEqual(EADV, POSIXErrorCode.EADV.rawValue)
  expectEqual(ESRMNT, POSIXErrorCode.ESRMNT.rawValue)
  expectEqual(ECOMM, POSIXErrorCode.ECOMM.rawValue)
  expectEqual(EPROTO, POSIXErrorCode.EPROTO.rawValue)
  expectEqual(EMULTIHOP, POSIXErrorCode.EMULTIHOP.rawValue)
  expectEqual(EDOTDOT, POSIXErrorCode.EDOTDOT.rawValue)
  expectEqual(EBADMSG, POSIXErrorCode.EBADMSG.rawValue)
  expectEqual(EOVERFLOW, POSIXErrorCode.EOVERFLOW.rawValue)
  expectEqual(ENOTUNIQ, POSIXErrorCode.ENOTUNIQ.rawValue)
  expectEqual(EBADFD, POSIXErrorCode.EBADFD.rawValue)
  expectEqual(EREMCHG, POSIXErrorCode.EREMCHG.rawValue)
  expectEqual(ELIBACC, POSIXErrorCode.ELIBACC.rawValue)
  expectEqual(ELIBBAD, POSIXErrorCode.ELIBBAD.rawValue)
  expectEqual(ELIBSCN, POSIXErrorCode.ELIBSCN.rawValue)
  expectEqual(ELIBMAX, POSIXErrorCode.ELIBMAX.rawValue)
  expectEqual(ELIBEXEC, POSIXErrorCode.ELIBEXEC.rawValue)
  expectEqual(EILSEQ, POSIXErrorCode.EILSEQ.rawValue)
  expectEqual(ERESTART, POSIXErrorCode.ERESTART.rawValue)
  expectEqual(ESTRPIPE, POSIXErrorCode.ESTRPIPE.rawValue)
  expectEqual(EUSERS, POSIXErrorCode.EUSERS.rawValue)
  expectEqual(ENOTSOCK, POSIXErrorCode.ENOTSOCK.rawValue)
  expectEqual(EDESTADDRREQ, POSIXErrorCode.EDESTADDRREQ.rawValue)
  expectEqual(EMSGSIZE, POSIXErrorCode.EMSGSIZE.rawValue)
  expectEqual(EPROTOTYPE, POSIXErrorCode.EPROTOTYPE.rawValue)
  expectEqual(ENOPROTOOPT, POSIXErrorCode.ENOPROTOOPT.rawValue)
  expectEqual(EPROTONOSUPPORT, POSIXErrorCode.EPROTONOSUPPORT.rawValue)
  expectEqual(ESOCKTNOSUPPORT, POSIXErrorCode.ESOCKTNOSUPPORT.rawValue)
  expectEqual(EOPNOTSUPP, POSIXErrorCode.EOPNOTSUPP.rawValue)
  expectEqual(EPFNOSUPPORT, POSIXErrorCode.EPFNOSUPPORT.rawValue)
  expectEqual(EAFNOSUPPORT, POSIXErrorCode.EAFNOSUPPORT.rawValue)
  expectEqual(EADDRINUSE, POSIXErrorCode.EADDRINUSE.rawValue)
  expectEqual(EADDRNOTAVAIL, POSIXErrorCode.EADDRNOTAVAIL.rawValue)
  expectEqual(ENETDOWN, POSIXErrorCode.ENETDOWN.rawValue)
  expectEqual(ENETUNREACH, POSIXErrorCode.ENETUNREACH.rawValue)
  expectEqual(ENETRESET, POSIXErrorCode.ENETRESET.rawValue)
  expectEqual(ECONNABORTED, POSIXErrorCode.ECONNABORTED.rawValue)
  expectEqual(ECONNRESET, POSIXErrorCode.ECONNRESET.rawValue)
  expectEqual(ENOBUFS, POSIXErrorCode.ENOBUFS.rawValue)
  expectEqual(EISCONN, POSIXErrorCode.EISCONN.rawValue)
  expectEqual(ENOTCONN, POSIXErrorCode.ENOTCONN.rawValue)
  expectEqual(ESHUTDOWN, POSIXErrorCode.ESHUTDOWN.rawValue)
  expectEqual(ETOOMANYREFS, POSIXErrorCode.ETOOMANYREFS.rawValue)
  expectEqual(ETIMEDOUT, POSIXErrorCode.ETIMEDOUT.rawValue)
  expectEqual(ECONNREFUSED, POSIXErrorCode.ECONNREFUSED.rawValue)
  expectEqual(EHOSTDOWN, POSIXErrorCode.EHOSTDOWN.rawValue)
  expectEqual(EHOSTUNREACH, POSIXErrorCode.EHOSTUNREACH.rawValue)
  expectEqual(EALREADY, POSIXErrorCode.EALREADY.rawValue)
  expectEqual(EINPROGRESS, POSIXErrorCode.EINPROGRESS.rawValue)
  expectEqual(ESTALE, POSIXErrorCode.ESTALE.rawValue)
  expectEqual(EUCLEAN, POSIXErrorCode.EUCLEAN.rawValue)
  expectEqual(ENOTNAM, POSIXErrorCode.ENOTNAM.rawValue)
  expectEqual(ENAVAIL, POSIXErrorCode.ENAVAIL.rawValue)
  expectEqual(EISNAM, POSIXErrorCode.EISNAM.rawValue)
  expectEqual(EREMOTEIO, POSIXErrorCode.EREMOTEIO.rawValue)
  expectEqual(EDQUOT, POSIXErrorCode.EDQUOT.rawValue)
  expectEqual(ENOMEDIUM, POSIXErrorCode.ENOMEDIUM.rawValue)
  expectEqual(EMEDIUMTYPE, POSIXErrorCode.EMEDIUMTYPE.rawValue)
  expectEqual(ECANCELED, POSIXErrorCode.ECANCELED.rawValue)
  expectEqual(ENOKEY, POSIXErrorCode.ENOKEY.rawValue)
  expectEqual(EKEYEXPIRED, POSIXErrorCode.EKEYEXPIRED.rawValue)
  expectEqual(EKEYREVOKED, POSIXErrorCode.EKEYREVOKED.rawValue)
  expectEqual(EKEYREJECTED, POSIXErrorCode.EKEYREJECTED.rawValue)
  expectEqual(EOWNERDEAD, POSIXErrorCode.EOWNERDEAD.rawValue)
  expectEqual(ENOTRECOVERABLE, POSIXErrorCode.ENOTRECOVERABLE.rawValue)
}
#elseif os(OpenBSD)

POSIXErrorCodeTestSuite.test("OpenBSD POSIX error codes constants") {
  expectEqual(EPERM, POSIXErrorCode.EPERM.rawValue)
  expectEqual(ENOENT, POSIXErrorCode.ENOENT.rawValue)
  expectEqual(ESRCH, POSIXErrorCode.ESRCH.rawValue)
  expectEqual(EINTR, POSIXErrorCode.EINTR.rawValue)
  expectEqual(EIO, POSIXErrorCode.EIO.rawValue)
  expectEqual(ENXIO, POSIXErrorCode.ENXIO.rawValue)
  expectEqual(E2BIG, POSIXErrorCode.E2BIG.rawValue)
  expectEqual(ENOEXEC, POSIXErrorCode.ENOEXEC.rawValue)
  expectEqual(EBADF, POSIXErrorCode.EBADF.rawValue)
  expectEqual(ECHILD, POSIXErrorCode.ECHILD.rawValue)
  expectEqual(EDEADLK, POSIXErrorCode.EDEADLK.rawValue)
  expectEqual(ENOMEM, POSIXErrorCode.ENOMEM.rawValue)
  expectEqual(EACCES, POSIXErrorCode.EACCES.rawValue)
  expectEqual(EFAULT, POSIXErrorCode.EFAULT.rawValue)
  expectEqual(ENOTBLK, POSIXErrorCode.ENOTBLK.rawValue)
  expectEqual(EBUSY, POSIXErrorCode.EBUSY.rawValue)
  expectEqual(EEXIST, POSIXErrorCode.EEXIST.rawValue)
  expectEqual(EXDEV, POSIXErrorCode.EXDEV.rawValue)
  expectEqual(ENODEV, POSIXErrorCode.ENODEV.rawValue)
  expectEqual(ENOTDIR, POSIXErrorCode.ENOTDIR.rawValue)
  expectEqual(EISDIR, POSIXErrorCode.EISDIR.rawValue)
  expectEqual(EINVAL, POSIXErrorCode.EINVAL.rawValue)
  expectEqual(ENFILE, POSIXErrorCode.ENFILE.rawValue)
  expectEqual(EMFILE, POSIXErrorCode.EMFILE.rawValue)
  expectEqual(ENOTTY, POSIXErrorCode.ENOTTY.rawValue)
  expectEqual(ETXTBSY, POSIXErrorCode.ETXTBSY.rawValue)
  expectEqual(EFBIG, POSIXErrorCode.EFBIG.rawValue)
  expectEqual(ENOSPC, POSIXErrorCode.ENOSPC.rawValue)
  expectEqual(ESPIPE, POSIXErrorCode.ESPIPE.rawValue)
  expectEqual(EROFS, POSIXErrorCode.EROFS.rawValue)
  expectEqual(EMLINK, POSIXErrorCode.EMLINK.rawValue)
  expectEqual(EPIPE, POSIXErrorCode.EPIPE.rawValue)
  expectEqual(EDOM, POSIXErrorCode.EDOM.rawValue)
  expectEqual(ERANGE, POSIXErrorCode.ERANGE.rawValue)
  expectEqual(EAGAIN, POSIXErrorCode.EAGAIN.rawValue)
  expectEqual(EINPROGRESS, POSIXErrorCode.EINPROGRESS.rawValue)
  expectEqual(EALREADY, POSIXErrorCode.EALREADY.rawValue)
  expectEqual(ENOTSOCK, POSIXErrorCode.ENOTSOCK.rawValue)
  expectEqual(EDESTADDRREQ, POSIXErrorCode.EDESTADDRREQ.rawValue)
  expectEqual(EMSGSIZE, POSIXErrorCode.EMSGSIZE.rawValue)
  expectEqual(EPROTOTYPE, POSIXErrorCode.EPROTOTYPE.rawValue)
  expectEqual(ENOPROTOOPT, POSIXErrorCode.ENOPROTOOPT.rawValue)
  expectEqual(EPROTONOSUPPORT, POSIXErrorCode.EPROTONOSUPPORT.rawValue)
  expectEqual(ESOCKTNOSUPPORT, POSIXErrorCode.ESOCKTNOSUPPORT.rawValue)
  expectEqual(EOPNOTSUPP, POSIXErrorCode.EOPNOTSUPP.rawValue)
  expectEqual(EPFNOSUPPORT, POSIXErrorCode.EPFNOSUPPORT.rawValue)
  expectEqual(EAFNOSUPPORT, POSIXErrorCode.EAFNOSUPPORT.rawValue)
  expectEqual(EADDRINUSE, POSIXErrorCode.EADDRINUSE.rawValue)
  expectEqual(EADDRNOTAVAIL, POSIXErrorCode.EADDRNOTAVAIL.rawValue)
  expectEqual(ENETDOWN, POSIXErrorCode.ENETDOWN.rawValue)
  expectEqual(ENETUNREACH, POSIXErrorCode.ENETUNREACH.rawValue)
  expectEqual(ENETRESET, POSIXErrorCode.ENETRESET.rawValue)
  expectEqual(ECONNABORTED, POSIXErrorCode.ECONNABORTED.rawValue)
  expectEqual(ECONNRESET, POSIXErrorCode.ECONNRESET.rawValue)
  expectEqual(ENOBUFS, POSIXErrorCode.ENOBUFS.rawValue)
  expectEqual(EISCONN, POSIXErrorCode.EISCONN.rawValue)
  expectEqual(ENOTCONN, POSIXErrorCode.ENOTCONN.rawValue)
  expectEqual(ESHUTDOWN, POSIXErrorCode.ESHUTDOWN.rawValue)
  expectEqual(ETOOMANYREFS, POSIXErrorCode.ETOOMANYREFS.rawValue)
  expectEqual(ETIMEDOUT, POSIXErrorCode.ETIMEDOUT.rawValue)
  expectEqual(ECONNREFUSED, POSIXErrorCode.ECONNREFUSED.rawValue)
  expectEqual(ELOOP, POSIXErrorCode.ELOOP.rawValue)
  expectEqual(ENAMETOOLONG, POSIXErrorCode.ENAMETOOLONG.rawValue)
  expectEqual(EHOSTDOWN, POSIXErrorCode.EHOSTDOWN.rawValue)
  expectEqual(EHOSTUNREACH, POSIXErrorCode.EHOSTUNREACH.rawValue)
  expectEqual(ENOTEMPTY, POSIXErrorCode.ENOTEMPTY.rawValue)
  expectEqual(EPROCLIM, POSIXErrorCode.EPROCLIM.rawValue)
  expectEqual(EUSERS, POSIXErrorCode.EUSERS.rawValue)
  expectEqual(EDQUOT, POSIXErrorCode.EDQUOT.rawValue)
  expectEqual(ESTALE, POSIXErrorCode.ESTALE.rawValue)
  expectEqual(EREMOTE, POSIXErrorCode.EREMOTE.rawValue)
  expectEqual(EBADRPC, POSIXErrorCode.EBADRPC.rawValue)
  expectEqual(ERPCMISMATCH, POSIXErrorCode.ERPCMISMATCH.rawValue)
  expectEqual(EPROGUNAVAIL, POSIXErrorCode.EPROGUNAVAIL.rawValue)
  expectEqual(EPROGMISMATCH, POSIXErrorCode.EPROGMISMATCH.rawValue)
  expectEqual(EPROCUNAVAIL, POSIXErrorCode.EPROCUNAVAIL.rawValue)
  expectEqual(ENOLCK, POSIXErrorCode.ENOLCK.rawValue)
  expectEqual(ENOSYS, POSIXErrorCode.ENOSYS.rawValue)
  expectEqual(EFTYPE, POSIXErrorCode.EFTYPE.rawValue)
  expectEqual(EAUTH, POSIXErrorCode.EAUTH.rawValue)
  expectEqual(ENEEDAUTH, POSIXErrorCode.ENEEDAUTH.rawValue)
  expectEqual(EIPSEC, POSIXErrorCode.EIPSEC.rawValue)
  expectEqual(ENOATTR, POSIXErrorCode.ENOATTR.rawValue)
  expectEqual(EILSEQ, POSIXErrorCode.EILSEQ.rawValue)
  expectEqual(ENOMEDIUM, POSIXErrorCode.ENOMEDIUM.rawValue)
  expectEqual(EMEDIUMTYPE, POSIXErrorCode.EMEDIUMTYPE.rawValue)
  expectEqual(EOVERFLOW, POSIXErrorCode.EOVERFLOW.rawValue)
  expectEqual(ECANCELED, POSIXErrorCode.ECANCELED.rawValue)
  expectEqual(EIDRM, POSIXErrorCode.EIDRM.rawValue)
  expectEqual(ENOMSG, POSIXErrorCode.ENOMSG.rawValue)
  expectEqual(ENOTSUP, POSIXErrorCode.ENOTSUP.rawValue)
  expectEqual(EBADMSG, POSIXErrorCode.EBADMSG.rawValue)
  expectEqual(ENOTRECOVERABLE, POSIXErrorCode.ENOTRECOVERABLE.rawValue)
  expectEqual(EOWNERDEAD, POSIXErrorCode.EOWNERDEAD.rawValue)
  expectEqual(EPROTO, POSIXErrorCode.EPROTO.rawValue)

  expectEqual(EWOULDBLOCK, POSIXErrorCode.EAGAIN.rawValue)
}

#endif

runAllTests()
