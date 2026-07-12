.class public Landroidx/appcompat/view/menu/t6;
.super Landroidx/appcompat/view/menu/j00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final p:Landroidx/appcompat/view/menu/t6;


# instance fields
.field public final l:Landroid/util/SparseArray;

.field public final m:Landroidx/appcompat/view/menu/q6;

.field public final n:Ljava/util/Map;

.field public final o:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/t6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t6;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/t6;->p:Landroidx/appcompat/view/menu/t6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/j00$a;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    new-instance v0, Landroidx/appcompat/view/menu/q6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/q6;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/t6;->o:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/t6;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/t6;->z2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic k(Landroid/os/IInterface;Landroidx/appcompat/view/menu/p6;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/t6;->y2(Landroid/os/IInterface;Landroidx/appcompat/view/menu/p6;)V

    return-void
.end method

.method public static bridge synthetic u2(Landroidx/appcompat/view/menu/t6;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    return-object p0
.end method

.method public static w2()Landroidx/appcompat/view/menu/t6;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/t6;->p:Landroidx/appcompat/view/menu/t6;

    return-object v0
.end method

.method public static synthetic y2(Landroid/os/IInterface;Landroidx/appcompat/view/menu/p6;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/p10;->b:Landroidx/appcompat/view/menu/go0$d;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p6;->b()Landroid/location/Location;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$d;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A0()Landroidx/appcompat/view/menu/p6;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public A2()V
    .locals 11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->o()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v3, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->o()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v4}, Landroidx/appcompat/view/menu/lr;->k(Ljava/io/InputStream;)[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    invoke-virtual {v5, v0}, Landroidx/appcompat/view/menu/q6;->a(Landroid/os/Parcel;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const-class v8, Landroidx/appcompat/view/menu/q6;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :cond_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    goto :goto_3

    :goto_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_2
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->o()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v1, [Ljava/io/Closeable;

    aput-object v4, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v3
.end method

.method public B(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iget p2, p1, Landroidx/appcompat/view/menu/q6;->m:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    return-object p1
.end method

.method public B2()V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    new-instance v3, Landroid/util/AtomicFile;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->o()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    invoke-virtual {v7, v2, v5}, Landroidx/appcompat/view/menu/q6;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v7, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v7, v5

    :goto_0
    iget-object v8, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v8, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/appcompat/view/menu/lr;->l(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v6, v2, v5

    invoke-static {v2}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_3

    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v6, v2, v5

    invoke-static {v2}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_4

    :catchall_3
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v6, v2, v5

    invoke-static {v2}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v3

    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public C0(ILjava/lang/String;Landroidx/appcompat/view/menu/p6;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iput-object p3, p1, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public G1(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iput-object p3, p1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iput-object p1, v1, Landroidx/appcompat/view/menu/q6;->p:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J0(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public K0(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iget p1, p1, Landroidx/appcompat/view/menu/q6;->m:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iput-object p1, v1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P0(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iput p3, p1, Landroidx/appcompat/view/menu/q6;->m:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e1(ILjava/lang/String;Landroidx/appcompat/view/menu/n6;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iput-object p3, p1, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h2(ILjava/lang/String;)Landroidx/appcompat/view/menu/n6;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iget p2, p1, Landroidx/appcompat/view/menu/q6;->m:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    return-object p1
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->A2()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/t6;->v2(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k0(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/t6$a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/t6$a;-><init>(Landroidx/appcompat/view/menu/t6;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Landroidx/appcompat/view/menu/y90;

    invoke-direct {v0, p2, p3}, Landroidx/appcompat/view/menu/y90;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/t6;->v2(Landroid/os/IBinder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l0(Landroidx/appcompat/view/menu/n6;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iput-object p1, v1, Landroidx/appcompat/view/menu/q6;->n:Landroidx/appcompat/view/menu/n6;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p2(ILjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iget p2, p1, Landroidx/appcompat/view/menu/q6;->m:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    return-object p1
.end method

.method public q0()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/q6;->p:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s2(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/t6;->x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;

    move-result-object p1

    iput-object p3, p1, Landroidx/appcompat/view/menu/q6;->o:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t0(Landroidx/appcompat/view/menu/p6;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->m:Landroidx/appcompat/view/menu/q6;

    iput-object p1, v1, Landroidx/appcompat/view/menu/q6;->q:Landroidx/appcompat/view/menu/p6;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/t6;->B2()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v2(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->o:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/r6;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/r6;-><init>(Landroidx/appcompat/view/menu/t6;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final x2(ILjava/lang/String;)Landroidx/appcompat/view/menu/q6;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/t6;->l:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q6;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/q6;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/q6;-><init>()V

    const/4 v2, 0x0

    iput v2, p1, Landroidx/appcompat/view/menu/q6;->m:I

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic z2(Landroid/os/IBinder;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :catch_0
    :goto_0
    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/appcompat/view/menu/p10$a;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    iget-object v4, p0, Landroidx/appcompat/view/menu/t6;->n:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/y90;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v5, v4, Landroidx/appcompat/view/menu/y90;->b:I

    iget-object v4, v4, Landroidx/appcompat/view/menu/y90;->a:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Landroidx/appcompat/view/menu/t6;->B(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0xbb8

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/yu0;->n()Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Landroidx/appcompat/view/menu/s6;

    invoke-direct {v5, v3, v4}, Landroidx/appcompat/view/menu/s6;-><init>(Landroid/os/IInterface;Landroidx/appcompat/view/menu/p6;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method
