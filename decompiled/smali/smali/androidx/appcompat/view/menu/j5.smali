.class public final Landroidx/appcompat/view/menu/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/bf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j5$a;,
        Landroidx/appcompat/view/menu/j5$b;,
        Landroidx/appcompat/view/menu/j5$c;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/j5;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j5;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/j5;->a:Landroidx/appcompat/view/menu/bf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ko;)V
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/uk0;

    sget-object v1, Landroidx/appcompat/view/menu/j5$c;->a:Landroidx/appcompat/view/menu/j5$c;

    invoke-interface {p1, v0, v1}, Landroidx/appcompat/view/menu/ko;->a(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/ko;

    const-class v0, Landroidx/appcompat/view/menu/bd0;

    sget-object v1, Landroidx/appcompat/view/menu/j5$b;->a:Landroidx/appcompat/view/menu/j5$b;

    invoke-interface {p1, v0, v1}, Landroidx/appcompat/view/menu/ko;->a(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/ko;

    const-class v0, Landroidx/appcompat/view/menu/ad0;

    sget-object v1, Landroidx/appcompat/view/menu/j5$a;->a:Landroidx/appcompat/view/menu/j5$a;

    invoke-interface {p1, v0, v1}, Landroidx/appcompat/view/menu/ko;->a(Ljava/lang/Class;Landroidx/appcompat/view/menu/tf0;)Landroidx/appcompat/view/menu/ko;

    return-void
.end method
