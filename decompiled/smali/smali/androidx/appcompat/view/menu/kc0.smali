.class public abstract Landroidx/appcompat/view/menu/kc0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/kc0$a;,
        Landroidx/appcompat/view/menu/kc0$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/kc0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/kc0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/kc0$b;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/kc0;->a:Landroidx/appcompat/view/menu/kc0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroidx/appcompat/view/menu/kc0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/kc0;->a:Landroidx/appcompat/view/menu/kc0$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/kc0$b;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/kc0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Landroidx/appcompat/view/menu/j90;
.end method

.method public abstract c(Landroid/net/Uri;)Landroidx/appcompat/view/menu/j90;
.end method
