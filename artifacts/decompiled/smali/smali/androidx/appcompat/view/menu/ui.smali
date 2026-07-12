.class public Landroidx/appcompat/view/menu/ui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i8;
.implements Landroidx/appcompat/view/menu/ii0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ui$b;,
        Landroidx/appcompat/view/menu/ui$f;,
        Landroidx/appcompat/view/menu/ui$c;,
        Landroidx/appcompat/view/menu/ui$d;,
        Landroidx/appcompat/view/menu/ui$a;,
        Landroidx/appcompat/view/menu/ui$e;
    }
.end annotation


# instance fields
.field public final a:Lio/flutter/embedding/engine/FlutterJNI;

.field public final b:Ljava/util/Map;

.field public c:Ljava/util/Map;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/Map;

.field public g:I

.field public final h:Landroidx/appcompat/view/menu/ui$b;

.field public i:Ljava/util/WeakHashMap;

.field public j:Landroidx/appcompat/view/menu/ui$f;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 1

    .line 9
    new-instance v0, Landroidx/appcompat/view/menu/ui$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ui$c;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ui;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/ui$f;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroidx/appcompat/view/menu/ui$f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->d:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->f:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ui;->g:I

    .line 7
    new-instance v0, Landroidx/appcompat/view/menu/oi0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oi0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->h:Landroidx/appcompat/view/menu/ui$b;

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ui;->i:Ljava/util/WeakHashMap;

    iput-object p1, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ui;->j:Landroidx/appcompat/view/menu/ui$f;

    return-void
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/ui;Ljava/lang/String;ILandroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/view/menu/ui;->i(Ljava/lang/String;ILandroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public static g(Ljava/lang/Error;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ui;->j(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;Landroidx/appcompat/view/menu/i8$c;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#send on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    const-string v1, "DartMessenger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message with callback over channel \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Landroidx/appcompat/view/menu/ui;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/appcompat/view/menu/ui;->g:I

    if-eqz p3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/ui;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2, p1, v1}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchEmptyPlatformMessage(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p3, p1, p2, v2, v1}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method public c(ILjava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "Received message reply from Dart."

    const-string v1, "DartMessenger"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i8$b;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "Invoking registered callback for reply from Dart."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/i8$b;->a(Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/ui;->g(Ljava/lang/Error;)V

    goto :goto_2

    :goto_1
    const-string p2, "Uncaught exception in binary message reply handler"

    invoke-static {v1, p2, p1}, Landroidx/appcompat/view/menu/ea0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .locals 9

    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message from Dart over channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ui;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/ui$d;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ui;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/ui;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/ui;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/ui;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroidx/appcompat/view/menu/ui$a;

    invoke-direct {v3, p2, p3, p4, p5}, Landroidx/appcompat/view/menu/ui$a;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Landroidx/appcompat/view/menu/ui;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;IJ)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;Landroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;IJ)V
    .locals 10

    move-object v4, p2

    if-eqz v4, :cond_0

    iget-object v0, v4, Landroidx/appcompat/view/menu/ui$d;->b:Landroidx/appcompat/view/menu/ui$b;

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, p4

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/p11;->c(Ljava/lang/String;I)V

    new-instance v9, Landroidx/appcompat/view/menu/ti;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/ti;-><init>(Landroidx/appcompat/view/menu/ui;Ljava/lang/String;ILandroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;J)V

    move-object v0, p0

    if-nez v8, :cond_1

    iget-object v8, v0, Landroidx/appcompat/view/menu/ui;->h:Landroidx/appcompat/view/menu/ui$b;

    :cond_1
    invoke-interface {v8, v9}, Landroidx/appcompat/view/menu/ui$b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Landroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;I)V
    .locals 3

    const-string v0, "DartMessenger"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "Deferring to registered handler to process message."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/appcompat/view/menu/ui$d;->a:Landroidx/appcompat/view/menu/i8$a;

    new-instance v1, Landroidx/appcompat/view/menu/ui$e;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v1, v2, p3}, Landroidx/appcompat/view/menu/ui$e;-><init>(Lio/flutter/embedding/engine/FlutterJNI;I)V

    invoke-interface {p1, p2, v1}, Landroidx/appcompat/view/menu/i8$a;->a(Ljava/nio/ByteBuffer;Landroidx/appcompat/view/menu/i8$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/ui;->g(Ljava/lang/Error;)V

    goto :goto_2

    :goto_1
    const-string p2, "Uncaught exception in binary message listener"

    invoke-static {v0, p2, p1}, Landroidx/appcompat/view/menu/ea0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    goto :goto_2

    :cond_0
    const-string p1, "No registered handler for message. Responding to Dart with empty reply message."

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    :goto_2
    return-void
.end method

.method public final synthetic i(Ljava/lang/String;ILandroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/p11;->h(Ljava/lang/String;I)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#handleMessageFromDart on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p3, p4, p2}, Landroidx/appcompat/view/menu/ui;->h(Landroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;I)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p1, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    return-void

    :goto_2
    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    iget-object p2, p0, Landroidx/appcompat/view/menu/ui;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    throw p1
.end method

.method public j(Ljava/lang/String;Landroidx/appcompat/view/menu/i8$a;Landroidx/appcompat/view/menu/i8$c;)V
    .locals 8

    if-nez p2, :cond_0

    const-string p2, "DartMessenger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing handler for channel \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/ui;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/ui$b;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unrecognized TaskQueue, use BinaryMessenger to create your TaskQueue (ex makeBackgroundTaskQueue)."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting handler for channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/ui;->b:Ljava/util/Map;

    new-instance v2, Landroidx/appcompat/view/menu/ui$d;

    invoke-direct {v2, p2, p3}, Landroidx/appcompat/view/menu/ui$d;-><init>(Landroidx/appcompat/view/menu/i8$a;Landroidx/appcompat/view/menu/ui$b;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/ui;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_3

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/ui$a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ui;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/view/menu/ui$d;

    iget-object v4, p3, Landroidx/appcompat/view/menu/ui$a;->a:Ljava/nio/ByteBuffer;

    iget v5, p3, Landroidx/appcompat/view/menu/ui$a;->b:I

    iget-wide v6, p3, Landroidx/appcompat/view/menu/ui$a;->c:J

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/view/menu/ui;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/ui$d;Ljava/nio/ByteBuffer;IJ)V

    goto :goto_1

    :cond_4
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
