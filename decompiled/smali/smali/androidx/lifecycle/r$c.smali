.class public abstract Landroidx/lifecycle/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$c$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/r$c$a;

.field public static final c:Landroidx/appcompat/view/menu/gi$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/r$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/r$c$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/lifecycle/r$c;->b:Landroidx/lifecycle/r$c$a;

    sget-object v0, Landroidx/lifecycle/r$c$a$a;->a:Landroidx/lifecycle/r$c$a$a;

    sput-object v0, Landroidx/lifecycle/r$c;->c:Landroidx/appcompat/view/menu/gi$b;

    return-void
.end method
