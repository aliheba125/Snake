.class public final Landroidx/appcompat/view/menu/ox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ox$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/ox;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ex0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ox$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ox$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ox$a;->a()Landroidx/appcompat/view/menu/ox;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ox;->b:Landroidx/appcompat/view/menu/ox;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ex0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ox;->a:Landroidx/appcompat/view/menu/ex0;

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/ox$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ox$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ox$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/ex0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ox;->a:Landroidx/appcompat/view/menu/ex0;

    return-object v0
.end method
