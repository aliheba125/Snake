.class public Landroidx/appcompat/view/menu/tz$q;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
