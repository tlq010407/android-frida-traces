.class public Lcom/huawei/wisesecurity/ucs_credential/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;

.field public c:Ljava/lang/String;

.field public d:Lcom/huawei/wisesecurity/ucs_credential/m;

.field public e:Lcom/huawei/wisesecurity/ucs_credential/j;

.field public f:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;Lcom/huawei/wisesecurity/ucs_credential/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->f:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    iput-object p2, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->b:Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;

    iput-object p5, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->d:Lcom/huawei/wisesecurity/ucs_credential/m;

    new-instance p1, Lcom/huawei/wisesecurity/ucs_credential/j;

    invoke-direct {p1, p2, p4, p3}, Lcom/huawei/wisesecurity/ucs_credential/j;-><init>(Landroid/content/Context;Lcom/huawei/wisesecurity/ucs_credential/m;Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;)V

    iput-object p1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->e:Lcom/huawei/wisesecurity/ucs_credential/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/Credential;
    .locals 5

    :try_start_0
    const-string v0, "AndroidKS"

    iput-object v0, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->g:Ljava/lang/String;

    new-instance v0, Lcom/huawei/wisesecurity/ucs_credential/c;

    iget-object v1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->f:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    iget-object v2, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->b:Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/wisesecurity/ucs_credential/c;-><init>(Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;)V

    iget-object v1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->d:Lcom/huawei/wisesecurity/ucs_credential/m;

    invoke-interface {v1}, Lcom/huawei/wisesecurity/ucs_credential/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/huawei/wisesecurity/ucs_credential/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/Credential;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    const-string v1, "Kid"

    iput-object v1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyCredential use KeyStoreHandler get exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "z"

    invoke-static {v2, v0, v1}, Lcom/huawei/wisesecurity/ucs/common/log/LogUcs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/huawei/wisesecurity/ucs_credential/d;

    iget-object v1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->f:Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;

    iget-object v2, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->b:Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;

    iget-object v4, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->e:Lcom/huawei/wisesecurity/ucs_credential/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/wisesecurity/ucs_credential/d;-><init>(Lcom/huawei/wisesecurity/ucs/credential/CredentialClient;Landroid/content/Context;Lcom/huawei/wisesecurity/ucs/credential/outer/NetworkCapability;Lcom/huawei/wisesecurity/ucs_credential/j;)V

    iget-object v1, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->d:Lcom/huawei/wisesecurity/ucs_credential/m;

    invoke-interface {v1}, Lcom/huawei/wisesecurity/ucs_credential/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/wisesecurity/ucs_credential/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/huawei/wisesecurity/ucs_credential/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/wisesecurity/ucs/credential/Credential;

    move-result-object p1

    return-object p1
.end method
