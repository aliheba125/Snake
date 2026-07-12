.class public Landroidx/appcompat/view/menu/m10$d;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/m10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p3, v0

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->k()Landroidx/appcompat/view/menu/mv0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/mv0;->j(Landroid/app/job/JobInfo;)Landroid/app/job/JobInfo;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
