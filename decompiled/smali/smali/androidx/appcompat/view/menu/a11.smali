.class public abstract Landroidx/appcompat/view/menu/a11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/a11$a;,
        Landroidx/appcompat/view/menu/a11$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/a11$a;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/k6$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/k6$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/k6$b;->d(J)Landroidx/appcompat/view/menu/a11$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Landroidx/appcompat/view/menu/a11$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method
