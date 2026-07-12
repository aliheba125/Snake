.class public Landroidx/appcompat/view/menu/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/y6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Landroidx/appcompat/view/menu/u6;

.field public n:I

.field public o:Landroidx/appcompat/view/menu/j50;

.field public p:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/y6$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y6$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/y6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    const-class v0, Landroidx/appcompat/view/menu/u6;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/u6;

    iput-object v0, p0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/y6;->n:I

    const-class v0, Landroidx/appcompat/view/menu/j50;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/j50;

    iput-object v0, p0, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-class v2, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-class v3, Landroidx/appcompat/view/menu/z6;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/z6;

    iget-object v4, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    .line 12
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/z6;->m:Z

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final d(I)Landroidx/appcompat/view/menu/z6;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/z6;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/z6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z6;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Landroidx/appcompat/view/menu/z6;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/z6;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/z6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z6;-><init>()V

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/z6;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/z6;-><init>(Landroidx/appcompat/view/menu/z6;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, v1, Landroidx/appcompat/view/menu/z6;->m:Z

    :cond_1
    return-object v1
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v2, v2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/lv0;->p(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v3}, Landroidx/appcompat/view/menu/y6;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/lr;->l(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v3

    invoke-static {v0}, Landroidx/appcompat/view/menu/fc;->a([Ljava/io/Closeable;)V

    throw v1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public j(ZI)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/y6;->d(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p2

    iput-boolean p1, p2, Landroidx/appcompat/view/menu/z6;->m:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroidx/appcompat/view/menu/y6;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
