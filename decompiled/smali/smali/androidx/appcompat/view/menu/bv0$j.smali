.class public final Landroidx/appcompat/view/menu/bv0$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/bv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public final a:Landroid/accounts/AuthenticatorDescription;

.field public final b:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bv0$j;->a:Landroid/accounts/AuthenticatorDescription;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bv0$j;->b:Landroid/content/pm/ServiceInfo;

    return-void
.end method
