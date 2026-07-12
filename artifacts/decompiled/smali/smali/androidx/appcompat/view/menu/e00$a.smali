.class public Landroidx/appcompat/view/menu/e00$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/e00;
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

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v4

    invoke-static {v4, v0}, Landroidx/appcompat/view/menu/kl0;->d(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, p3, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
