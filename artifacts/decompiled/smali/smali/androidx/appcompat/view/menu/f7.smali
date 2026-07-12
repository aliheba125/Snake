.class public Landroidx/appcompat/view/menu/f7;
.super Landroidx/appcompat/view/menu/o00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final n:Landroidx/appcompat/view/menu/f7;


# instance fields
.field public final l:Ljava/util/HashMap;

.field public final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/f7;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/f7;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/f7;->n:Landroidx/appcompat/view/menu/f7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o00$a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/f7;->m:Ljava/lang/Object;

    return-void
.end method

.method public static k()Landroidx/appcompat/view/menu/f7;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/f7;->n:Landroidx/appcompat/view/menu/f7;

    return-object v0
.end method


# virtual methods
.method public F(I)Landroidx/appcompat/view/menu/e7;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/e7;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H1(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c2(I)Landroidx/appcompat/view/menu/e7;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f7;->F(I)Landroidx/appcompat/view/menu/e7;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/f7;->h(I)Landroidx/appcompat/view/menu/e7;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/x6;->g(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f7;->u2()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->v(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->n(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final h(I)Landroidx/appcompat/view/menu/e7;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/e7;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e7;-><init>()V

    iput p1, v0, Landroidx/appcompat/view/menu/e7;->m:I

    sget-object v1, Landroidx/appcompat/view/menu/g7;->m:Landroidx/appcompat/view/menu/g7;

    iput-object v1, v0, Landroidx/appcompat/view/menu/e7;->n:Landroidx/appcompat/view/menu/g7;

    iget-object v1, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f7;->u2()V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h1()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/e7;

    iget v4, v3, Landroidx/appcompat/view/menu/e7;->m:I

    if-ltz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f7;->v2()V

    return-void
.end method

.method public final u2()V
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/c5;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->w()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/c5;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/c5;->d()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/lr;->l(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/c5;->b(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/c5;->a(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    :try_start_5
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v4, v3, v2

    invoke-static {v3}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public final v2()V
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/view/menu/f7;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->w()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v5, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->w()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v5}, Landroidx/appcompat/view/menu/lr;->k(Ljava/io/InputStream;)[B

    move-result-object v4

    array-length v6, v4

    invoke-virtual {v1, v4, v3, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v4, Landroidx/appcompat/view/menu/e7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v4, :cond_1

    :try_start_5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :cond_1
    :try_start_6
    iget-object v6, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v7, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/e7;

    iget-object v8, p0, Landroidx/appcompat/view/menu/f7;->l:Ljava/util/HashMap;

    iget v9, v7, Landroidx/appcompat/view/menu/e7;->m:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception v4

    goto :goto_1

    :cond_2
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_3
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_2
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v5, v1, v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v4

    :goto_5
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v1
.end method
