.class public abstract Landroidx/lifecycle/r$a;
.super Landroidx/lifecycle/r$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/r$a$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/lifecycle/r$a$a;

.field public static final e:Landroidx/appcompat/view/menu/gi$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/r$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/r$a$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/lifecycle/r$a;->d:Landroidx/lifecycle/r$a$a;

    sget-object v0, Landroidx/lifecycle/r$a$a$a;->a:Landroidx/lifecycle/r$a$a$a;

    sput-object v0, Landroidx/lifecycle/r$a;->e:Landroidx/appcompat/view/menu/gi$b;

    return-void
.end method
