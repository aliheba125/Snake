.class public Landroidx/appcompat/view/menu/b7;
.super Landroidx/appcompat/view/menu/n00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final l:Landroidx/appcompat/view/menu/b7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/b7;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/b7;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/b7;->l:Landroidx/appcompat/view/menu/b7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/n00$a;-><init>()V

    return-void
.end method

.method public static h()Landroidx/appcompat/view/menu/b7;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/b7;->l:Landroidx/appcompat/view/menu/b7;

    return-object v0
.end method


# virtual methods
.method public D0(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 4

    sget-object p1, Landroidx/appcompat/view/menu/dx0;->b:Landroidx/appcompat/view/menu/go0$e;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p3, 0x2

    :try_start_0
    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/d7;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/storage/StorageVolume;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    array-length p3, p1

    :goto_0
    if-ge v1, p3, :cond_3

    aget-object v0, p1, v1

    sget-object v2, Landroidx/appcompat/view/menu/fx0;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {p4}, Landroidx/appcompat/view/menu/lv0;->n(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/appcompat/view/menu/fx0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-static {p4}, Landroidx/appcompat/view/menu/lv0;->n(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p2
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public x0(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/kl0;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/snake/helper/FileProvider;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
