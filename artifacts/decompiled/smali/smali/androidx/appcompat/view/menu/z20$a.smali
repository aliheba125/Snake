.class public Landroidx/appcompat/view/menu/z20$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/z20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->l()Landroidx/appcompat/view/menu/rv0;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->J2()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroidx/appcompat/view/menu/rv0;->h(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->l()Landroidx/appcompat/view/menu/rv0;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroidx/appcompat/view/menu/rv0;->h(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    return-object v0

    :catchall_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
